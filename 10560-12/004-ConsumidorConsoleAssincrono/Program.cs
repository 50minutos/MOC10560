using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace _004_ConsumidorConsoleAssincrono
{
    class Program
    {
        private static Proxy.CalculadoraClient c;

        static void Main(string[] args)
        {
            c = new Proxy.CalculadoraClient();

            c.SomarCompleted += ProcessSomarCompleted;

            Console.WriteLine("antes");
            c.SomarAsync(10, 3);
            Console.WriteLine("depois");

            //----------------------------------

            Console.WriteLine("antes de novo");
            c.BeginSubtrair(10, 3, SubtrairCompleted, null);
            Console.WriteLine("depois de novo");

            Console.ReadKey();
        }

        static void ProcessSomarCompleted(object sender, Proxy.SomarCompletedEventArgs e)
        {
            Console.WriteLine(e.Result);
        }

        static void SubtrairCompleted(IAsyncResult iar)
        {
            var d = c.EndSubtrair(iar);

            Console.WriteLine(d);
        }
    }
}
