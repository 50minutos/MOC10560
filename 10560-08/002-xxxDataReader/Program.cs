using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace _002_xxxDataReader
{
    class Program
    {
        static void Main(string[] args)
        {
            var cs = @"Data Source=.\SqlExpress;Initial Catalog=master;Integrated Security=true;";

            using (var c = new SqlConnection(cs))
            {
                var cmd = "select name from sys.objects";

                using (var k = new SqlCommand(cmd, c))
                {
                    c.Open();

                    var dr = k.ExecuteReader();

                    while (dr.Read())
                    {
                        //Console.WriteLine(dr["name"]); //dr[0]

                        Console.WriteLine(dr.GetString(0));
                    }

                    c.Close();
                }
            }

            Console.ReadKey();
        }
    }
}
