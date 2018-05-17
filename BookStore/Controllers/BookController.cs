using System;
using System.Collections.Generic;
using BookStore.Models;
using Microsoft.AspNetCore.Mvc;

namespace Bookstore.Controllers
{
  public class BookController : Controller
  {
      [HttpGet("/books")]
      public ActionResult Index()
      {
      List<Book> allBooks = Book.GetAll();
      Dictionary<string, object> model = new Dictionary<string, object>();
      List<Customer> newCustomer = Customer.GetAll();
      model.Add("Customers", newCustomer);
      model.Add("Books", allBooks);

      return View(model);
      }
      [HttpGet("/books/new")]
      public ActionResult CreateForm()
      {
        return View("Form");
      }
      [HttpPost("/books")]
      public ActionResult Create()
      {
        Book newBook = new Book(Request.Form["book_image"], Request.Form["book_author"], Request.Form["book_title"], Request.Form["book_isbn"], Request.Form["book_publisher"], Double.Parse(Request.Form["book_price"]), int.Parse(Request.Form["quantity"]));
        newBook.Save();

        // List<Book> allBooks = Book.GetAll();
        return RedirectToAction("Index");
      }
      [HttpGet("/books/{id}")]
      public ActionResult Details(int id)
      {
        Dictionary<string, object> model = new Dictionary<string, object>();
        Book selectedBook = Book.Find(id);
        List<Customer> bookCustomers = selectedBook.GetCustomers();
        model.Add("selectedBook", selectedBook);
        model.Add("bookCustomers", bookCustomers);
        return View("Details", model);
      }
      [HttpGet("/books/{id}/delete")]
      public ActionResult DeleteBook(int id)
      {
        Dictionary<string, object> model = new Dictionary<string, object>();
        Book selectedBook = Book.Find(id);
        selectedBook.DeleteBook();
        return View("Index", model);
      }

      [HttpPost("/search")]
      public ActionResult Search()
      {
        List<Book> searchBook = Book.SearchBooks(Request.Form["searchdate"]);
        return RedirectToAction("Index");
      }
      [HttpGet("/books/{id}/update")]
      public ActionResult UpdateBook(int id)
      {
        Book selectedBook = Book.Find(id);
        return View("BookUpdate", selectedBook);
        // return RedirectToAction("Index")
      }
      [HttpPost("/books/{id}/update")]
      public ActionResult PostUpdate(int id)
      {
        Book selectedBook = Book.Find(id);
        selectedBook.UpdateBook(Request.Form["book_image"], Request.Form["book_author"], Request.Form["book_title"], Request.Form["book_isbn"], Request.Form["book_publisher"], Double.Parse(Request.Form["book_price"]), int.Parse(Request.Form["quantity"]));
        return RedirectToAction("Index");
      }
  }
}
