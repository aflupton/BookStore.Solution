using System;
using System.Collections.Generic;
using BookStore.Models;
using Microsoft.AspNetCore.Mvc;

namespace Bookstore.Controllers
{
  public class CustomerController : Controller
  {
    [HttpGet("/customers")]
    public ActionResult Index()
    {
      List<Customer> allCustomers = Customer.GetAll();
      return View(allCustomers);
    }
    [HttpGet("/customers/new")]
    public ActionResult CreateForm()
    {
      return View("Form");
    }
    [HttpPost("/customers")]
    public ActionResult Create()
    {
      Customer newCustomer = new Customer(Request.Form["customer_name"], Request.Form["customer_address"]);
      newCustomer.Save();
      return RedirectToAction("Index");
    }
    [HttpGet("/customers/{id}")]
    public ActionResult Details(int id)
    {
      Dictionary<string, object> model = new Dictionary<string, object> ();
      Customer selectedCustomer = Customer.Find(id);
      List<Book> customerBooks = selectedCustomer.GetBooks();
      List<Book> allBooks = Book.GetAll();
      model.Add("selectedCustomer", selectedCustomer);
      model.Add("customerBooks", customerBooks);
      model.Add("allBooks", allBooks);
      return View("Details", model);
    }

    [HttpGet("/customers/{id}/update")]
    public ActionResult UpdateForm(int id)
    {
      Customer thisCustomer = Customer.Find(id);
      return View("UpdateCustomer", thisCustomer);
    }

    // [HttpPost("/customers/{id}/updated")]
    // public ActionResult UpdatedCustomer(int id)
    // {
    //   Customer foundCustomer = Customer.Find(id);
    //   Customer updatedCustomer = new Customer(Request.Form["customer_name"], Request.Form["customer_address"]);
    //   updatedCustomer.Update();
    //   return RedirectToAction("Index", updatedCustomer);
    // }

    [HttpPost("/customers/checkout")]
    public ActionResult Checkout()
    {
      Book newPurchase = Book.Find(int.Parse(Request.Form["bookid"]));
      Customer purchasingCustomer = Customer.Find(int.Parse(Request.Form["appendName"]));
      newPurchase.AddCustomerToBook(purchasingCustomer);
      return RedirectToAction("Index");
    }



    [HttpGet("/customers/deleteall")]
    public ActionResult DeleteAll()
    {
      Customer.DeleteAll();
      return RedirectToAction("Index");
    }
  }
}
