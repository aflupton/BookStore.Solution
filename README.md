# BookStore.Solution

#### _Book Store App, 5/16/18_

#### By _**Rio Atmadja, Eric Nicolas, Austin Roberts, and Andrew Lupton**_

## Description
_An MVC app for a bookstore utilizing MySql database functionality. Group week project, C#, MySql._

## Specs

* _The program should allow the user to add new customers and books to the database._
  * _The program should allow for additional entries of customers and books._
  * _The program should allow book instances to be associated with customer instances, and vice versa._
* _The program should allow the user to find and recall database entries as sequential lists._
* _The program should allow the user to update existing customer and book instances in the database, as well as create new instances._
* _The program should allow the user to delete single customer or book instances from the database, as well as delete each object class in its entirety._ 


## Setup/Installation Requirements

* _Clone or download the repository from Github._
* _Open terminal and move to the '~/BookStore.Solution/BookStore' project directory._
* _Execute 'dotnet restore' in the console._
* _Open MAMP, and start servers._
* _Execute 'dotnet run' in the console._
* _Navigate to http://localhost:5000/ in your browser._

## Sql Setup

* _CREATE DATABASE 'book_store'_
* _USE 'book_store'_
* _CREATE TABLE 'books'_
  * _INSERT INTO `books`(`id`, `image`, `author`, `bookName`, `isbn`, `publisher`, `price`, `quantity`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8])_
* _CREATE TABLE customers_
  * _INSERT INTO `customers`(`id`, `customer_name`, `customer_address`) VALUES ([value-1],[value-2],[value-3])_
* _CREATE TABLE books_customers_
  * _INSERT INTO `books_customers`(`id`, `books_id`, `customers_id`) VALUES ([value-1],[value-2],[value-3])_

## Known Bugs

_"~/Views/Book/Index.cshtml" is throwing an exception on page load._

## Support and contact details

_If you have any questions, email us at aflupton@gmail.com_

## Technologies Used

_C#/MVC, MySql, HTML, CSS/Bootstrap_

### License

* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
* You should have received a copy of the GNU General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.

Copyright (c) 2018 **_Rio Atmadja, Eric Nicolas, Austin Roberts, and Andrew Lupton_**
