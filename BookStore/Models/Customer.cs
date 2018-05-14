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
    public Customer (string name, string address, int = 0)
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
    public string GetAddress()
    {
      return _address;
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
        Customer newCustomer = new Customer(name, idd);
        allCustomers.Add(newCustomer);
      }
      conn.Close();
      if (conn != null)
      {
        conn.Dispose();
      }
      return allCustomers;
    }
    public void Update(string newData, string parameter)
    {
        MySqlConnection conn = DB.Connection();
        conn.Open();
        var cmd = conn.CreateCommand() as MySqlCommand;
        if (parameter == address)
        {
          cmd.CommandText = @"UPDATE customers SET address = @newData WHERE id = @searchId;";
        }
        else
        {
        cmd.CommandText = @"UPDATE customers SET name = @newData WHERE id = @searchId;";
        }
        MySqlParameter searchId = new MySqlParameter();
        searchId.ParameterName = "@searchId";
        searchId.Value = _id;
        cmd.Parameters.Add(searchId);

        MySqlParameter description = new MySqlParameter();
        description.ParameterName = "@newData";
        description.Value = newDescription;
        cmd.Parameters.Add(description);

        cmd.ExecuteNonQuery();
        _description = newDescription;
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
        int id = 0;
        string name = "";
        // We remove the line setting a itemBookId value here.

        while(rdr.Read())
        {
          id = rdr.GetInt32(0);
          name = rdr.GetString(1);
          // We no longer read the itemBookId here, either.
        }

        // Constructor below no longer includes a itemBookId parameter:
        Customer newCustomer = new Customer(name, id);
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
       cmd.CommandText = @"DELETE FROM customers; DELETE FROM customer_books";
       cmd.ExecuteNonQuery();
       conn.Close();
       if (conn != null)
       {
           conn.Dispose();
       }
    }
    public List<Customer> GetCustomers()
    {
        MySqlConnection conn = DB.Connection();
        conn.Open();
        MySqlCommand cmd = conn.CreateCommand() as MySqlCommand;
        cmd.CommandText = @"SELECT  books * FROM customers
            JOIN customers_books ON (customers.id = customers_books.customer_id)
            JOIN books ON (customers_books.book_id = books.id)
            WHERE customers.id = @CustomerId;";

        MySqlParameter categoryIdParameter = new MySqlParameter();
        categoryIdParameter.ParameterName = "@CustomerId";
        categoryIdParameter.Value = _id;
        cmd.Parameters.Add(categoryIdParameter);

        MySqlDataReader rdr = cmd.ExecuteReader() as MySqlDataReader;
        List<Book> books = new List<Book>{};

        while(rdr.Read())
        {
          int id = rdr.GetInt32(0);
          string bookName = rdr.GetString(1);
          string author =rdr.GetString(2);
          int isbn =rdr.GetInt32(3);
          double price = rdr.GetDouble(4);
          string image = rdr.GetString(5);      

          Book newBook = new Book (bookName, author, isbn, price, image, id);
          books.Add(newBook);
        }
        conn.Close();
        if (conn != null)
        {
            conn.Dispose();
        }
        return customers;
    }

  }
}
