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
  }
}
