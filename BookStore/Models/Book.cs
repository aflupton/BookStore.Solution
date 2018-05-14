using System;
using System.Collections.Generic;
using BookStore;
using MySql.Data.MySqlClient;

namespace BookStore.Models
{
  public class Book
  {
    //private variables
    private int _id;
    private string _bookName;
    private string _author;
    private int _isbn;
    private double _price;
    private string _image;

    public book (string bookName, string author, int isbn, double price, string image, int = 0)
    {
      _id =id;
      _bookName = bookName;
      _author = author;
      _isbn = isbn;
      _price = price;
      _image = image;
    }

    public void GetId()
    {
      return _id;
    }
    public void GetName()
    {
      return _bookName;
    }
    public string SetName(string newBookName)
    {
      _bookName = newBookName;
    }
    public void GetAuthor()
    {
      return _author;
    }
    public string SetAuthor(string newAuthor)
    {
      _author = newAuthor;
    }
    public void GetIsbn()
    {
      return _isbn;
    }
    public int SetIsbn(int newIsbn)
    {
      _isbn = newIsbn;
    }
    public void GetPrice()
    {
      return _price;
    }
    public double SetPrice(double newPrice)
    {
      _price = newPrice;
    }
    public void GetImage()
    {
      return _image;
    }
    public string SetImage(string newImage)
    {
      _image = newImage;
    }

    //create object in database table 'books'
    public void Save()
    {
      MySqlConnection conn = DB.Connection();
      conn.Open();
      MySqlCommand cmd = conn.CreateCommand() as MySqlCommand;
      cmd.CommandText = @"INSERT INTO books (bookName, author, isbn, price, image) VALUES (@BookName, @Author, @Isbn, @Price, @Image);";

      MySqlParameter bookName = new MySqlParameter();
      bookName.ParameterName = "@BookName";
      bookName.Value = this._bookName;
      cmd.Parameters.Add(bookName);

      MySqlParameter author = new MySqlParameter();
      author.ParameterName = "@Author";
      author.Value = this._author;
      cmd.Parameters.Add(author);

      MySqlParameter isbn = new MySqlParameter();
      isbn.ParameterName = "@Isbn";
      isbn.Value = this._isbn;
      cmd.Parameters.Add(isbn);

      MySqlParameter price = new MySqlParameter();
      price.ParameterName = "@Price";
      price.Value = this._price;
      cmd.Parameters.Add(price);

      MySqlParameter image = new MySqlParameter();
      image.ParameterName = "@Image";
      image.Value = this._image;
      cmd.Parameters.Add(image);

      cmd.ExecuteNonQuery();
      _id = (int) cmd.LastInsertedId;
      conn.Close();
      if(conn != null)
      {
        conn.Dispose();
      }
    }
    //create join table instance
    public void AddCustomerToBook(Customer newCustomer)
    {
      MySqlConnection conn = DB.Connection();
      conn.Open();
      MySqlCommand cmd = conn.CreateCommand() as MySqlCommand;
      cmd.CommandText = @"INSERT INTO books_customers(book_id, customer_id) VALUES (@BookId, @CustomerId);";

      MySqlParameter book_id = new MySqlParameter();
      book_id.ParameterName = "@BookId";
      book_id.Value = _id;
      cmd.Parameters.Add(book_id);

      MySqlParameter customer_id = new MySqlParameter();
      customer_id.ParameterName = "@CustomerId";
      customer_id.Value = newCustomer.GetId();
      cmd.Parameters.Add(customer_id);

      cmd.ExecuteNonQuery();
      conn.Close();
      if(conn != null)
      {
        conn.Dispose();
      }
    }

    //getall book instances in class
    public static List<Book> GetAll()
    {
      List<Book> allBooks = new List<Book> {};
      MySqlConnection conn = DB.Connection();
      conn.Open();
      MySqlCommand cmd = conn.CreateCommand() as MySqlCommand;
      cmd.CommandText = @"SELECT * from books;";

      MySqlDataReader rdr = cmd.ExecuteReader() as MySqlDataReader;
      while (rdr.Read())
      {
        int id = rdr.GetInt32(0);
        string bookName = rdr.GetString(1);
        string author = rdr.GetString(2);
        int isbn = rdr.GetInt32(3);
        double price = rdr.GetDouble(4);
        string image = rdr.GetString(5);
        Book newBook = new Book(bookName, author, isbn, price, image, id);
        allBooks.Add(newBook);
      }
      conn.Close();
      if(conn != null)
      {
        conn.Dispose();
      }
    }
    //find instance in table 'books'
    public static Book Find(int id)
    {
      MySqlConnection conn = DB.Connection();
      conn.Open();
      MySqlCommand cmd = conn.CreateCommand() as MySqlCommand;
      cmd.CommandText = @"SELECT * FROM books WHERE id = (@searchId);";

      MySqlParameter searchId = new MySqlParameter();
      searchId.ParameterName = "@searchId";
      searchId.Value = id;
      cmd.Parameters.Add(searchId);

      MySqlDataReader rdr = cmd.ExecuteReader as MySqlDataReader;
      int id = 0;
      string name = "";
      string author = "";
      int isbn = 0;
      double price = 0;
      string image = "";

      while(rdr.Read())
      {
        id = rdr.GetInt32(0);
        name = rdr.GetString(1);
        author = rdr.GetString(2);
        isbn = rdr.GetInt32(3);
        price = rdr.GetDouble(4);
        image = rdr.GetString(5);
      }

      Book myBook = new Book (id, name, author, isbn, price, image);
      conn.Close();
      if(conn != null)
      {
        conn.Dispose();
      }
      return myBook;
    }
    //update instance in table 'books'

    //delete instance in table 'books'

    //delete entire class
    public void DeleteAll()
    {
      MySqlConnection conn = DB.Connection();
      conn.Open();
      MySqlCommand cmd = conn.CreateCommand() as MySqlCommand;
      cmd.CommandText = @"DELETE from books;";
      cmd.ExecuteNonQuery();
      conn.Close();
      if(conn != null)
      {
        conn.Dispose();
      }
    }

  }
}
