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
    private string _image;
  }
}
