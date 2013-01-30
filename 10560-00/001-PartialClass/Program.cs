using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace _001_PartialClass
{
    class Program
    {
        static void Main(string[] args)
        {
            //jit compiler

            var p = new Pessoa();
            
            p.Codigo = 1;
            p.Nome = "adão";
            p.Sexo = 'm';

            p.Acordar();
            p.Comer();
            p.Dormir();

            Console.ReadKey();
        }
    }
}
