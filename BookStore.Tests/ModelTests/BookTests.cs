using System;
using System.Collections.Generic;
using BookStore.Models;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using MySql.Data.MySqlClient;

namespace BookStore.Tests
{
  [TestClass]
  public class BookTest : IDisposable
  {
    public BookTest()
    {
      DBConfiguration.ConnectionString = "server=localhost;user id=root;password=root;port=8889;database=book_store_test;";
    }
    public void Dispose()
    {
      Book.DeleteAll();
    }
    [TestMethod]
    public void Saves_TwoBooks_AsSame()
    {
      //Arrange
      Book firstBook = new Book ("The Enormous Room", "e.e. cummings", "3596215002", 9.99, "img");
      Book secondBook = new Book ("The Enormous Room", "e.e. cummings", "3596215002", 9.99, "jpg");
      //Act
      firstBook.Save();
      secondBook.Save();
      //Assert
      Assert.AreEqual(firstBook, secondBook);
    }
    [TestMethod]
    public void Save_InstanceToDatabase_BooksTable()
    {
      //Arrange
      Book testBook = new Book ("Moby Dick", "Herman Melville", "2342342322", 12.99, "img");
      testBook.Save();
      //Act
      List<Book> result = Book.GetAll();
      List<Book> testList = new List<Book>{testBook};
      //Arrange
      CollectionAssert.AreEqual(testList, result);
    }
    [TestMethod]
    public void AddCustomer_ToBookObject()
    {
      //Arrange
      Book testBook = new Book("The Kindly Ones", "Jonathan Littell", "234093922", 25, "img");
      testBook.Save();

      Customer testCustomer = new Customer ("Austin", "600 1st Ave, Seattle, Wa");
      testCustomer.Save();
      //Act
      testBook.AddCustomerToBook(testCustomer);
      List<Customer> result = testBook.GetCustomers();
      int resultOne = result[0].GetId();
      int resultTwo = testCustomer.GetId();
      //Assert
      Assert.AreEqual(resultOne, resultTwo);
    }
    [TestMethod]
    public void GetAll_BookObjects_FromDatabase()
    {
      //Arrange

      //Act

      //Assert
      // CollectionAssert.AreEqual();
    }
    [TestMethod]
    public void Find_AllBookObjects_InDatabase()
    {
      //Arrange
      Book testBook = new Book ("Exit West", "Mohsin Hamid", "2349234332", 15.99, "img");
      testBook.Save();
      //Act
      Book foundBook = Book.Find(testBook.GetId());
      //Assert
      Assert.AreEqual(testBook, foundBook);
    }
    [TestMethod]
    public void Update_BookObject_BooksTable()
    {
      //Arrange
      Book testBook = new Book ("Imagined Communities", "Benedict Anderson", "2342349430", 21, "img");
      testBook.Save();
      string updatedName = "A Life Beyond Boundaries";
      string updatedAuthor = "Benedict Anderson";
      string updatedIsbn = "3459854822";
      double updatedPrice = 25;
      string updatedImage = "image";
      //Act
      testBook.UpdateBook(updatedName, updatedAuthor, updatedIsbn, updatedPrice, updatedImage);
      string result = Book.Find(testBook.GetId()).GetName();
      //Assert
      Assert.AreEqual(updatedName, result);
    }
    [TestMethod]
    public void Delete_SingleBookObject_FromDatabase()
    {
      //Arrange
      Book testBook = new Book ("Hhhh", "Laurent Binet", "9781452650", 20.95, "img");
      testBook.Save();
      //Act
      Console.WriteLine("Name: " + testBook.GetName() + "Author: " + testBook.GetAuthor());
      testBook.DeleteBook();
      Book deletedBook = Book.Find(testBook.GetId());
      //Assert
      Console.WriteLine("Name: " + deletedBook.GetName());
      Assert.AreEqual("", deletedBook.GetName());
    }
  }
}
