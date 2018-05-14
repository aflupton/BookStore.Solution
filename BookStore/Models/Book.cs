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

      //find instance in table 'books'

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
