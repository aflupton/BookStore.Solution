using System;
using System.Collections.Generic;
using BookStore.Models;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using MySql.Data.MySqlClient;

namespace BookStore.Tests
{
  [TestClass]
  public class CustomerTest : IDisposable
  {
    public CustomerTest()
    {
      DBConfiguration.ConnectionString = "server=localhost;user id=root;password=root;port=8889;database=book_store_test;";
    }
    public void Dispose()
    {
      Customer.DeleteAll();
    }
    [TestMethod]
    public void Save_InstanceToDatabase_CustomerTable()
    {
      //Arrange
      Customer testCustomer = new Customer ("Austin Roberts", "600 1st Ave, Seattle");
      testCustomer.Save();
      //Act
      List<Customer> result = Customer.GetAll();
      List<Customer> testList = new List<Customer>{testCustomer};
      //Arrange
      CollectionAssert.AreEqual(testList, result);
    }
  }
}
