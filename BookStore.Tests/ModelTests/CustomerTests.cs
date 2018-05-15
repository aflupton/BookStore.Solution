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
      Customer testCustomer = new Customer ("1", "1");
      testCustomer.Save();
      //Act
      List<Customer> result = Customer.GetAll();
      List<Customer> testList = new List<Customer>{testCustomer};
      //Arrange
      CollectionAssert.AreEqual(testList, result);
    }
    [TestMethod]
    public void test_GetaAll()
    {
      //Arrange
      Customer testCustomer = new Customer ("1", "1");
      testCustomer.Save();
      testCustomer.Save();
      //Act
      List<Customer> result = Customer.GetAll();
      
      //Arrange
      Assert.AreEqual(2, result.Count;)
    }
    [TestMethod]
    public void test_Update()
    {
      Customer testCustomer = new Customer ("1", "1");
      testCustomer.Save();
      testCustomer.Update("2","2");
      Customer newCustomer = new newCustomer("2","2")
      List<Customer> testList = new List<Customer> {newCustomer};
      List<Customer> allcustomer = Customer.GetAll();
      CollectionAssert.AreEqual(allcustomer, newCustomer);
    }
    [TestMethod]
    public void findindatabase()
    {
      //Arrange
      Customer testItem = new Customer("1","1");
      testItem.Save();

      //Act
      Customer result = Customer.Find(testItem.GetId());

      //Assert
      Assert.AreEqual(testItem, result);
    }
    [TestMethod]
    public void test_join_get()
    {
      //Arrange
      Customer testItem = Customer Band("1","1");
      testItem.Save();

      Book testBook = new Book("Imagined Communities", "Benedict Anderson", "2342349430", 21, "Verso", "img");
      testBook.Save();

      //Act
      Testbook.AddVenue(testItem);

      List<Book> result = testItem.GetBooks();
      List<Book> testList = new List<Book>{testBook;

      //Assert
      CollectionAssert.AreEqual(testList, result);
    }
  }
}
