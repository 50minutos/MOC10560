using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace _001_xxxConnection
{
    class Program
    {
        static void Main(string[] args)
        {
            var cs = @"Data Source=.\SqlExpress;Initial Catalog=master;Integrated Security=true;";
            
            using (var c = new SqlConnection(cs))
            {
                Console.WriteLine(c.State);

                c.Open();

                Console.WriteLine(c.State);

                c.Close();

                Console.WriteLine(c.State);

                Console.ReadKey();
            }
        }
    }
}
