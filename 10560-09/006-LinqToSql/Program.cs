using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace _006_LinqToSql
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var dc = new ModeloDataContext())
            {
                dc.Log = Console.Out;

                var pessoas = dc.GetTable<Pessoa>();

                //foreach (var item in pessoas)
                //{
                //    Console.WriteLine("{0} -> {1} - {2}", item.Cod, item.Nome, item.Sexo);
                //}

                Console.WriteLine();

                foreach (var item in pessoas.Where(p => p.Sexo == 'F').OrderBy(p => p.Nome))
                {
                    Console.WriteLine("{0} -> {1} - {2}", item.Cod, item.Nome, item.Sexo);
                }

                //deferred query execution
            }

            Console.ReadKey();
        }
    }
}
