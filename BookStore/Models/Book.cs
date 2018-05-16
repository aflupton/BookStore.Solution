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
    private string _image;
    private string _author;
    private string _bookName;
    private string _isbn;
    private string _publisher;
    private double _price;
    private int _quantity;


    public Book (string image, string author, string bookName, string isbn, string publisher, double price, int quantity, int id = 0)
    {
      _id =id;
      _image = image;
      _author = author;
      _bookName = bookName;
      _isbn = isbn;
      _publisher = publisher;
      _price = price;
      _quantity = quantity;
    }

    public int GetId()
    {
      return _id;
    }
    public string GetImage()
    {
      return _image;
    }
    public void SetImage(string newImage)
    {
      _image = newImage;
    }
    public string GetAuthor()
    {
      return _author;
    }
    public void SetAuthor(string newAuthor)
    {
      _author = newAuthor;
    }
    public string GetName()
    {
      return _bookName;
    }
    public void SetName(string newBookName)
    {
      _bookName = newBookName;
    }
    public string GetIsbn()
    {
      return _isbn;
    }
    public void SetIsbn(string newIsbn)
    {
      _isbn = newIsbn;
    }
    public string GetPublisher()
    {
      return _publisher;
    }
    public void SetPublisher(string newPublisher)
    {
      _publisher = newPublisher;
    }
    public double GetPrice()
    {
      return _price;
    }
    public void SetPrice(double newPrice)
    {
      _price = newPrice;
    }
    public int GetQuantity()
    {
      return _quantity;
    }
    public void SetQuantity(int newQuantity)
    {
      _quantity = newQuantity;
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
        bool imageEquality = this.GetImage() == newBook.GetImage();
        bool authorEquality = this.GetAuthor() == newBook.GetAuthor();
        bool nameEquality = this.GetName() == newBook.GetName();
        bool isbnEquality = this.GetIsbn() == newBook.GetIsbn();
        bool publisherEquality = this.GetPublisher() == newBook.GetPublisher();
        bool priceEquality = this.GetPrice() == newBook.GetPrice();
        bool quantEquality = this.GetQuantity() == newBook.GetQuantity();
        return (imageEquality && authorEquality && nameEquality && isbnEquality && publisherEquality && priceEquality && quantEquality);

      }
    }

    //create Book instance in database table 'books'
    public void Save()
    {
      MySqlConnection conn = DB.Connection();
      conn.Open();
      MySqlCommand cmd = conn.CreateCommand() as MySqlCommand;
      cmd.CommandText = @"INSERT INTO books (image, author, bookName, isbn, publisher, price, quantity) VALUES (@Image, @Author, @BookName, @Isbn, @Publisher, @Price, @Quantity);";

      MySqlParameter image = new MySqlParameter();
      image.ParameterName = "@Image";
      image.Value = this._image;
      cmd.Parameters.Add(image);

      MySqlParameter author = new MySqlParameter();
      author.ParameterName = "@Author";
      author.Value = this._author;
      cmd.Parameters.Add(author);

      MySqlParameter bookName = new MySqlParameter();
      bookName.ParameterName = "@BookName";
      bookName.Value = this._bookName;
      cmd.Parameters.Add(bookName);

      MySqlParameter isbn = new MySqlParameter();
      isbn.ParameterName = "@Isbn";
      isbn.Value = this._isbn;
      cmd.Parameters.Add(isbn);

      MySqlParameter publisher = new MySqlParameter();
      publisher.ParameterName = "@Publisher";
      publisher.Value = this._publisher;
      cmd.Parameters.Add(publisher);

      MySqlParameter price = new MySqlParameter();
      price.ParameterName = "@Price";
      price.Value = this._price;
      cmd.Parameters.Add(price);

      MySqlParameter quantity = new MySqlParameter();
      quantity.ParameterName = "@Quantity";
      quantity.Value = this._quantity;
      cmd.Parameters.Add(quantity);

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
      cmd.CommandText = @"INSERT INTO books_customers(books_id, customers_id) VALUES (@BookId, @CustomerId);";

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
        string image = rdr.GetString(1);
        string author = rdr.GetString(2);
        string bookName = rdr.GetString(3);
        string isbn = rdr.GetString(4);
        string publisher = rdr.GetString(5);
        double price = rdr.GetDouble(6);
        int quantity = rdr.GetInt32(7);

        Book newBook = new Book(image, author, bookName, isbn, publisher, price, quantity, id);
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
      JOIN books_customers ON (books.id = books_customers.books_id)
      JOIN customers ON (books_customers.customers_id = customers_id) WHERE books.id = @BookId;";

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
      string image = "";
      string author = "";
      string bookName = "";
      string isbn = "";
      string publisher = "";
      double price = 0;
      int quantity = 0;


      while(rdr.Read())
      {
        bookId = rdr.GetInt32(0);
        image = rdr.GetString(1);
        author = rdr.GetString(2);
        bookName = rdr.GetString(3);
        isbn = rdr.GetString(4);
        publisher = rdr.GetString(5);
        price = rdr.GetDouble(6);
        quantity = rdr.GetInt32(7);

      }

      Book foundBook = new Book (image, author, bookName, isbn, publisher, price, quantity, id);
      conn.Close();
      if(conn != null)
      {
        conn.Dispose();
      }
      return foundBook;
    }

    //update single Book instance in table 'books'
    public void UpdateBook(string bookImage, string bookAuthor, string bookName, string bookIsbn, string bookPublisher, double bookPrice, int quantity)
    {
      MySqlConnection conn = DB.Connection();
      conn.Open();
      MySqlCommand cmd = conn.CreateCommand() as MySqlCommand;
      cmd.CommandText = @"UPDATE books SET image = @Image, author = @Author, bookName = @BookName, isbn = @Isbn, publisher = @Publisher, price = @Price, quantity = @Quantity;";

      MySqlParameter searchId = new MySqlParameter();
      searchId.ParameterName = "@searchId";
      searchId.Value = _id;
      cmd.Parameters.Add(searchId);

      MySqlParameter image = new MySqlParameter();
      image.ParameterName = "@Image";
      image.Value = bookImage;
      cmd.Parameters.Add(image);

      MySqlParameter author = new MySqlParameter();
      author.ParameterName = "@Author";
      author.Value = bookAuthor;
      cmd.Parameters.Add(author);

      MySqlParameter name = new MySqlParameter();
      name.ParameterName = "@BookName";
      name.Value = bookName;
      cmd.Parameters.Add(name);

      MySqlParameter isbn = new MySqlParameter();
      isbn.ParameterName = "@Isbn";
      isbn.Value = bookIsbn;
      cmd.Parameters.Add(isbn);

      MySqlParameter publisher = new MySqlParameter();
      publisher.ParameterName = "@Publisher";
      publisher.Value = bookPublisher;
      cmd.Parameters.Add(publisher);

      MySqlParameter price = new MySqlParameter();
      price.ParameterName = "@Price";
      price.Value = _id;
      cmd.Parameters.Add(price);

      MySqlParameter bookQuant = new MySqlParameter();
      bookQuant.ParameterName = "@Quantity";
      bookQuant.Value = quantity;
      cmd.Parameters.Add(bookQuant);



      cmd.ExecuteNonQuery();
      _image = bookImage;
      _author = bookAuthor;
      _bookName = bookName;
      _isbn = bookIsbn;
      _publisher = bookPublisher;
      _price = bookPrice;
      _quantity = quantity;


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
      cmd.CommandText = @"DELETE FROM books WHERE id = @BookId
      DELETE FROM books_customers WHERE books_id = @BookId;";

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
    //search for books
    public static List<Book> SearchBooks(string book)
    {
     List<Book> MyBooks = new List<Book> {};
     MySqlConnection conn = DB.Connection();
     conn.Open();

     MySqlCommand cmd = conn.CreateCommand() as MySqlCommand;
     cmd.CommandText = @"SELECT * FROM books WHERE bookName LIKE '%" + book + "%' OR isbn LIKE '" + book + "';";
     Console.WriteLine(cmd.CommandText);
     MySqlDataReader rdr = cmd.ExecuteReader() as MySqlDataReader;
     while(rdr.Read())
     {
       int id = rdr.GetInt32(0);
       string image = rdr.GetString(1);
       string author = rdr.GetString(2);
       string bookName = rdr.GetString(3);
       string isbn = rdr.GetString(4);
       string publisher = rdr.GetString(5);
       double price = rdr.GetDouble(6);
       int quantity = rdr.GetInt32(7);
       Book newBook = new Book(image, author, bookName, isbn, publisher, price, quantity, id);
       MyBooks.Add(newBook);
     }

     conn.Close();
     if(conn != null)
     {
       conn.Dispose();
     }
     return MyBooks;
    }
  }
}
