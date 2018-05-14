using System;
using System.Collections.Generic;
using BookStore;
using MySql.Data.MySqlClient;

namespace BookStore.Models
{
  public class Checkout
  {
    //private variables
    private int _id;
    private int _total;

    //constructor
    public Checkout (int total, int id = 0)
    {
      _id = id;
      _total = total;
    }
  }
}
