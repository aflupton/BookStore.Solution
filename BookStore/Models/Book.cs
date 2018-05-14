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
  }
}
