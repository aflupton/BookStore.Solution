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
    private string _isbn;
    private double _price;
    private string _image;

    public Book (string bookName, string author, string isbn, double price, string image, int id = 0)
    {
      _id =id;
      _bookName = bookName;
      _author = author;
      _isbn = isbn;
      _price = price;
      _image = image;
    }

    public int GetId()
    {
      return _id;
    }
    public string GetName()
    {
      return _bookName;
    }
    public void SetName(string newBookName)
    {
      _bookName = newBookName;
    }
    public string GetAuthor()
    {
      return _author;
    }
    public void SetAuthor(string newAuthor)
    {
      _author = newAuthor;
    }
    public string GetIsbn()
    {
      return _isbn;
    }
    public void SetIsbn(string newIsbn)
    {
      _isbn = newIsbn;
    }
    public double GetPrice()
    {
      return _price;
    }
    public void SetPrice(double newPrice)
    {
      _price = newPrice;
    }
    public string GetImage()
    {
      return _image;
    }
    public void SetImage(string newImage)
    {
      _image = newImage;
    }

    //overrides for testing
    public override int GetHashCode()
    {
      return this.GetId().GetHashCode();
    }
    public override bool Equals(System.Object otherBook)
    {
      if (!(otherBook is Book))
      {
        return false;
      }
      else
      {
        Book newBook = (Book) otherBook;
        return this.GetId().Equals(newBook.GetId());
      }
    }

    //create Book instance in database table 'books'
    public void Save()
    {
      MySqlConnection conn = DB.Connection();
      conn.Open();
      MySqlCommand cmd = conn.CreateCommand() as MySqlCommand;
      cmd.CommandText = @"INSERT INTO books (bookName, author, isbn, price, image) VALUES (@BookName, @Author, @Isbn, @Price, @Image);";

      MySqlParameter bookName = new MySqlParameter();
      bookName.ParameterName = "@BookName";
      bookName.Value = this._bookName;
      cmd.Parameters.Add(bookName);

      MySqlParameter author = new MySqlParameter();
      author.ParameterName = "@Author";
      author.Value = this._author;
      cmd.Parameters.Add(author);

      MySqlParameter isbn = new MySqlParameter();
      isbn.ParameterName = "@Isbn";
      isbn.Value = this._isbn;
      cmd.Parameters.Add(isbn);

      MySqlParameter price = new MySqlParameter();
      price.ParameterName = "@Price";
      price.Value = this._price;
      cmd.Parameters.Add(price);

      MySqlParameter image = new MySqlParameter();
      image.ParameterName = "@Image";
      image.Value = this._image;
      cmd.Parameters.Add(image);

      cmd.ExecuteNonQuery();
      _id = (int) cmd.LastInsertedId;
      conn.Close();
      if(conn != null)
      {
        conn.Dispose();
      }
    }

    //create join table instance, linking customer(s) to a Book instance
    public void AddCustomerToBook(Customer newCustomer)
    {
      MySqlConnection conn = DB.Connection();
      conn.Open();
      MySqlCommand cmd = conn.CreateCommand() as MySqlCommand;
      cmd.CommandText = @"INSERT INTO books_customers(book_id, customer_id) VALUES (@BookId, @CustomerId);";

      MySqlParameter book_id = new MySqlParameter();
      book_id.ParameterName = "@BookId";
      book_id.Value = _id;
      cmd.Parameters.Add(book_id);

      MySqlParameter customer_id = new MySqlParameter();
      customer_id.ParameterName = "@CustomerId";
      customer_id.Value = newCustomer.GetId();
      cmd.Parameters.Add(customer_id);

      cmd.ExecuteNonQuery();
      conn.Close();
      if(conn != null)
      {
        conn.Dispose();
      }
    }

    //get all single Book instances in Book class
    public static List<Book> GetAll()
    {
      List<Book> allBooks = new List<Book> {};
      MySqlConnection conn = DB.Connection();
      conn.Open();
      MySqlCommand cmd = conn.CreateCommand() as MySqlCommand;
      cmd.CommandText = @"SELECT * from books;";

      MySqlDataReader rdr = cmd.ExecuteReader() as MySqlDataReader;
      while (rdr.Read())
      {
        int id = rdr.GetInt32(0);
        string bookName = rdr.GetString(1);
        string author = rdr.GetString(2);
        string isbn = rdr.GetString(3);
        double price = rdr.GetDouble(4);
        string image = rdr.GetString(5);
        Book newBook = new Book(bookName, author, isbn, price, image, id);
        allBooks.Add(newBook);
      }
      conn.Close();
      if(conn != null)
      {
        conn.Dispose();
      }
      return allBooks;
    }

    //get all Book-linked customer instances from join table
    public List<Customer> GetCustomers()
    {
      MySqlConnection conn = DB.Connection();
      conn.Open();
      MySqlCommand cmd = conn.CreateCommand() as MySqlCommand;
      cmd.CommandText = @"SELECT customers.* FROM books
      JOIN books_customers ON (books.id = books_customers.book_id)
      JOIN customers ON (books_customer.customer_id = customer_id) WHERE books.id = @BookId;";

      MySqlParameter BookId = new MySqlParameter();
      BookId.ParameterName = "@BookId";
      BookId.Value = _id;
      cmd.Parameters.Add(BookId);

      MySqlDataReader rdr = cmd.ExecuteReader() as MySqlDataReader;
      List<Customer> Customers = new List<Customer> {};
      while(rdr.Read())
      {
        int id = rdr.GetInt32(0);
        string name = rdr.GetString(1);
        string address = rdr.GetString(2);
        Customer newCustomer = new Customer(name, address, id);
        Customers.Add(newCustomer);
      }
      conn.Close();
      if(conn != null)
      {
        conn.Dispose();
      }
      return Customers;
    }

    //find single Book instance in table 'books'
    public static Book Find(int id)
    {
      MySqlConnection conn = DB.Connection();
      conn.Open();
      MySqlCommand cmd = conn.CreateCommand() as MySqlCommand;
      cmd.CommandText = @"SELECT * FROM books WHERE id = @searchId;";

      MySqlParameter searchId = new MySqlParameter();
      searchId.ParameterName = "@searchId";
      searchId.Value = id;
      cmd.Parameters.Add(searchId);

      MySqlDataReader rdr = cmd.ExecuteReader() as MySqlDataReader;
      int bookId = 0;
      string name = "";
      string author = "";
      string isbn = "";
      double price = 0;
      string image = "";

      while(rdr.Read())
      {
        bookId = rdr.GetInt32(0);
        name = rdr.GetString(1);
        author = rdr.GetString(2);
        isbn = rdr.GetString(3);
        price = rdr.GetDouble(4);
        image = rdr.GetString(5);
      }

      Book foundBook = new Book (name, author, isbn, price, image, id);
      conn.Close();
      if(conn != null)
      {
        conn.Dispose();
      }
      return foundBook;
    }

    //update single Book instance in table 'books'
    public void UpdateBook(string bookName, string bookAuthor, string bookIsbn, double bookPrice, string bookImage)
    {
      MySqlConnection conn = DB.Connection();
      conn.Open();
      MySqlCommand cmd = conn.CreateCommand() as MySqlCommand;
      cmd.CommandText = @"UPDATE books SET bookName = @BookName, author = @Author, isbn = @Isbn, price = @Price, image = @Image;";

      MySqlParameter searchId = new MySqlParameter();
      searchId.ParameterName = "@searchId";
      searchId.Value = _id;
      cmd.Parameters.Add(searchId);

      MySqlParameter name = new MySqlParameter();
      name.ParameterName = "@BookName";
      name.Value = bookName;
      cmd.Parameters.Add(name);

      MySqlParameter author = new MySqlParameter();
      author.ParameterName = "@Author";
      author.Value = bookAuthor;
      cmd.Parameters.Add(author);

      MySqlParameter isbn = new MySqlParameter();
      isbn.ParameterName = "@Isbn";
      isbn.Value = bookIsbn;
      cmd.Parameters.Add(isbn);

      MySqlParameter price = new MySqlParameter();
      price.ParameterName = "@Price";
      price.Value = _id;
      cmd.Parameters.Add(price);

      MySqlParameter image = new MySqlParameter();
      image.ParameterName = "@Image";
      image.Value = bookImage;
      cmd.Parameters.Add(image);

      cmd.ExecuteNonQuery();
      _bookName = bookName;
      _author = bookAuthor;
      _isbn = bookIsbn;
      _price = bookPrice;
      _image = bookImage;

      if(conn != null)
      {
        conn.Dispose();
      }

    }

    //delete single Book instance in table 'books'
    public void DeleteBook()
    {
      MySqlConnection conn = DB.Connection();
      conn.Open();
      MySqlCommand cmd = conn.CreateCommand() as MySqlCommand;
      cmd.CommandText = @"DELETE FROM books WHERE book_id = @BookId
      DELETE FROM books_customers WHERE book_id = @BookId;";

      MySqlParameter id = new MySqlParameter();
      id.ParameterName = "@BookId";
      id.Value = this.GetId();
      cmd.Parameters.Add(id);

      cmd.ExecuteNonQuery();
      conn.Close();
      if(conn != null)
      {
        conn.Dispose();
      }
    }

    //delete all Book instances
    public static void DeleteAll()
    {
      MySqlConnection conn = DB.Connection();
      conn.Open();
      MySqlCommand cmd = conn.CreateCommand() as MySqlCommand;
      cmd.CommandText = @"DELETE from books;";
      cmd.ExecuteNonQuery();
      conn.Close();
      if(conn != null)
      {
        conn.Dispose();
      }
    }

  }
}
