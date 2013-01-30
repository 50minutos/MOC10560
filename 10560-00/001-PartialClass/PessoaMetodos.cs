using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace _001_PartialClass
{
    partial class Pessoa
    {
        public void Acordar() { Console.WriteLine("acordou"); }
        public void Comer() { Console.WriteLine("comeu"); }
        public void Dormir() { Console.WriteLine("dormiu"); }
    }
}
