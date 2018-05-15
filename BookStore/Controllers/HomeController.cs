using System;
using System.Collections.Generic;
using BookStore.Models;
using Microsoft.AspNetCore.Mvc;

namespace Bookstore.Controllers
{
  public class HomeController : Controller
  {

    [HttpGet("/")]
    public ActionResult Index()
    {
      return View();
    }

  }
}
