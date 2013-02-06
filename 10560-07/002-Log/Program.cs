using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Util;

namespace _002_Log
{
    class Program
    {
        static void Main(string[] args)
        {
            int x = 0;

            try
            {
                Console.WriteLine(10 / x);
            }
            catch (Exception ex)
            {
                //throw new MyException(ex.Message);
                throw new MyException("DIVISÃO POR ZERO", ex);
            }
            finally
            {
                Console.ReadKey();
            }
        }
    }
}
