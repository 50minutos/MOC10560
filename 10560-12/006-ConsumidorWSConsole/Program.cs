using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace _006_ConsumidorWSConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            var p = new Proxy.Calculadora();

            Console.WriteLine(p.Somar(1, 2));
            Console.WriteLine(p.Subtrair(1, 2));
            Console.WriteLine(p.Multiplicar(1, 2));
            Console.WriteLine(p.Dividir(1, 2));

            Console.ReadKey();
        }
    }
}
