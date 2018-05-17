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
       Book.DeleteAll();
    }
    // [TestMethod]
    // public void Save_InstanceToDatabase_CustomerTable()
    // {
    //   //Arrange
    //   Customer testCustomer = new Customer ("1", "1");
    //   testCustomer.Save();
    //   //Act
    //   List<Customer> result = Customer.GetAll();
    //   List<Customer> testList = new List<Customer>{testCustomer};
    //   //Arrange
    //   Console.WriteLine(testList.Count + "()" + result.Count);
    //   CollectionAssert.AreEqual(testList, result);
    // }
    // [TestMethod]
    // public void test_GetAll()
    // {
    //   //Arrange
    //   Customer testCustomer = new Customer ("1", "1");
    //   testCustomer.Save();
    //   testCustomer.Save();
    //   //Act
    //   List<Customer> result = Customer.GetAll();

    //   //Arrange
    //   Assert.AreEqual(2, result.Count);
    // }
    // [TestMethod]
    // public void test_Update()
    // {
    //   Customer testCustomer = new Customer ("1", "1");
    //   testCustomer.Save();
    //   testCustomer.Update("2","2");
    //   Customer newCustomer = new Customer("2","2");
    //   List<Customer> testList = new List<Customer> {newCustomer};
    //   List<Customer> allCustomer = Customer.GetAll();
    //   Console.WriteLine(allCustomer[0].GetAddress() + ">>>" + testList[0].GetAddress());
    //   CollectionAssert.AreEqual(testList, allCustomer);
    // }
    // [TestMethod]
    // public void find_in_database()
    // {
    //   //Arrange
    //   Customer testItem = new Customer("1","1");
    //   testItem.Save();

    //   //Act
    //   Customer result = Customer.Find(testItem.GetId());

    //   //Assert
    //   Assert.AreEqual(testItem, result);
    // }
    [TestMethod]
    public void test_join_get()
    {
      //Arrange
      Customer testCustomer = new Customer("1","1");
      testCustomer.Save();
    
      Book testBook = new Book ("img", "Benedict Anderson", "Imagined Communities", "2342349430", "Verso", 21, 1);
      testBook.Save();
      // Act
      testBook.AddCustomerToBook(testCustomer);
    
      List<Book> result = testCustomer.GetBooks();
      Console.WriteLine(result[0].GetId());
      Console.WriteLine(result[0].GetName());
      Console.WriteLine(result[0].GetImage());
      Console.WriteLine(result[0].GetPrice());
      Console.WriteLine(result[0].GetQuantity());
      Console.WriteLine(result[0].GetAuthor());
      Console.WriteLine(result[0].GetIsbn());
      Console.WriteLine(result[0].GetPublisher());

      List<Book> testList = new List<Book>{testBook};
    
      //Assert
      CollectionAssert.AreEqual(testList, result);
    }
  }
}
