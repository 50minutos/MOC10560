using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Util;

namespace _002_UsaUtil
{
    class Program
    {
        static void Main(string[] args)
        {
            var x = 10.0;
            var y = 3.0;

            Console.WriteLine(Calculadora.Somar(x, y));
            Console.WriteLine(Calculadora.Subtrair(x, y));
            Console.WriteLine(Calculadora.Multiplicar(x, y));
            Console.WriteLine(Calculadora.Dividir(x, y));

            Console.ReadKey();
        }
    }
}
