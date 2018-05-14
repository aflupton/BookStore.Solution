using System;
using System.Collections.Generic;
using MySql.Data.MySqlClient;
using BookStore;

namespace BookStore.Models
{
    public class DB
    {
        public static MySqlConnection Connection()
        {
            MySqlConnection conn = new MySqlConnection(DBConfiguration.ConnectionString);
            return conn;
        }
    }
}
