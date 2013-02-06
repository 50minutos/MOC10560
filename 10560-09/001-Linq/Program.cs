using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace _001_Linq
{
    class Program
    {
        static void Main()
        {
            var itens = from c in "ordem e progresso" 
                        select c; //comandos

            foreach (var item in itens)
            {
                Console.WriteLine(item);
            }

            Console.WriteLine();
    
            var outrosItens = "ORDEM E PROGRESSO"
                .Select(c => c); //método de extensão

            foreach (var item in outrosItens)
            {
                Console.Write("{0} ", item);
            }

            Console.ReadKey();
        }
    }
}
