using System;
using System.Collections.Generic;
using BookStore;
using MySql.Data.MySqlClient;

namespace BookStore.Models
{
  public class Customer
  {
    //private variables
    private int _id;
    private string _name;
    private string _address;

    //constructor
    public Customer (string name, string address, int id = 0)
    {
      _id = id;
      _name = name;
      _address = address;
    }
    public int GetId()
    {
      return _id;
    }
    public string GetName()
    {
      return _name;
    }
    public void SetName(string newName)
    {
      _name = newName;
    }
    public string GetAddress()
    {
      return _address;
    }
    public void SetAddress(string newAddress)
    {
      _address = newAddress;
    }
    public void Save()
    {
      MySqlConnection conn = DB.Connection();
      conn.Open();

      var cmd = conn.CreateCommand() as MySqlCommand;
      cmd.CommandText = @"INSERT INTO customers (name, address) VALUES (@name, @address);";

      MySqlParameter name = new MySqlParameter();
      name.ParameterName = "@name";
      name.Value = this._name;
      cmd.Parameters.Add(name);
      cmd.ExecuteNonQuery();
      _id = (int) cmd.LastInsertedId;
      conn.Close();
      if (conn !=null)
      {
          conn.Dispose();
      }
    }
    public static List<Customer> GetAll()
    {
      List<Customer> allCustomers = new List<Customer>{};
      MySqlConnection conn = DB.Connection();
      conn.Open();
      var cmd = conn.CreateCommand() as MySqlCommand;
      cmd.CommandText = @"SELECT * FROM customers;";
      var rdr = cmd.ExecuteReader() as MySqlDataReader;
      while(rdr.Read())
      {
        int id = rdr.GetInt32(0);
        string name = rdr.GetString(1);
        string address = rdr.GetString(2);
        Customer newCustomer = new Customer(name, address, id);
        allCustomers.Add(newCustomer);
      }
      conn.Close();
      if (conn != null)
      {
        conn.Dispose();
      }
      return allCustomers;
    }
    public void Update(string newName, string newAddress)
    {
        MySqlConnection conn = DB.Connection();
        conn.Open();
        var cmd = conn.CreateCommand() as MySqlCommand;
        if (newName == newAddress)
        {
          cmd.CommandText = @"UPDATE customers SET name = @NewName WHERE id = @searchId;";
        }
        else
        {
        cmd.CommandText = @"UPDATE customers SET address = @NewAddress WHERE id = @searchId;";
        }
        MySqlParameter searchId = new MySqlParameter();
        searchId.ParameterName = "@searchId";
        searchId.Value = _id;
        cmd.Parameters.Add(searchId);

        MySqlParameter name = new MySqlParameter();
        name.ParameterName = "@NewName";
        name.Value = newName;
        cmd.Parameters.Add(name);

        MySqlParameter address = new MySqlParameter();
        address.ParameterName = "@NewAddress";
        address.Value = newAddress;
        cmd.Parameters.Add(address);

        cmd.ExecuteNonQuery();
        _name = newName;
        _address = newAddress;

        conn.Close();
        if (conn != null)
        {
            conn.Dispose();
        }
    }
    public static Customer Find(int id)
    {
        MySqlConnection conn = DB.Connection();
        conn.Open();
        var cmd = conn.CreateCommand() as MySqlCommand;
        cmd.CommandText = @"SELECT * FROM customers WHERE id = (@searchId);";

        MySqlParameter searchId = new MySqlParameter();
        searchId.ParameterName = "@searchId";
        searchId.Value = id;
        cmd.Parameters.Add(searchId);

        var rdr = cmd.ExecuteReader() as MySqlDataReader;
        int customerId = 0;
        string name = "";
        string address = "";
        // We remove the line setting a itemBookId value here.

        while(rdr.Read())
        {
          customerId = rdr.GetInt32(0);
          name = rdr.GetString(1);
          address = rdr.GetString(2);
          // We no longer read the itemBookId here, either.
        }

        // Constructor below no longer includes a itemBookId parameter:
        Customer newCustomer = new Customer(name, address, id);
        conn.Close();
        if (conn != null)
        {
            conn.Dispose();
        }

        return newCustomer;
    }
    public static void DeleteAll()
    {
       MySqlConnection conn = DB.Connection();
       conn.Open();
       var cmd = conn.CreateCommand() as MySqlCommand;
       cmd.CommandText = @"DELETE FROM customers; DELETE FROM books_customers";
       cmd.ExecuteNonQuery();
       conn.Close();
       if (conn != null)
       {
           conn.Dispose();
       }
    }
    public List<Book> GetBooks()
    {
        MySqlConnection conn = DB.Connection();
        conn.Open();
        MySqlCommand cmd = conn.CreateCommand() as MySqlCommand;
        cmd.CommandText = @"SELECT books.* FROM customers
            JOIN books_customers ON (customers.id = books_customers.customer_id)
            JOIN books ON (books_customers.book_id = books.id)
            WHERE customers.id = @CustomerId;";

        MySqlParameter categoryIdParameter = new MySqlParameter();
        categoryIdParameter.ParameterName = "@CustomerId";
        categoryIdParameter.Value = _id;
        cmd.Parameters.Add(categoryIdParameter);

        MySqlDataReader rdr = cmd.ExecuteReader() as MySqlDataReader;
        List<Book> Books = new List<Book> {};
        while(rdr.Read())
        {
          int id = rdr.GetInt32(0);
          string bookName = rdr.GetString(1);
          string author = rdr.GetString(2);
          int isbn = rdr.GetInt32(3);
          double price = rdr.GetDouble(4);
          string image = rdr.GetString(5);

          Book newBook = new Book (bookName, author, isbn, price, image, id);
          Books.Add(newBook);
        }
        conn.Close();
        if (conn != null)
        {
            conn.Dispose();
        }
        return Books;
    }

  }
}
