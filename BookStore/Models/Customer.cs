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
  }
}
