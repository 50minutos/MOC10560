using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Linq;

namespace _002_LinqToXml
{
    class Program
    {
        static void Main(string[] args)
        {
            var nomes = from x in XElement
                            .Load("Agenda.xml")
                            .Elements()
                            //.Descendants() ou
                            //.Descendants("email") ou
                            .Descendants("nome")
                        select x
                            .Value
                            .ToUpper();

            foreach (var item in nomes)
            {
                Console.WriteLine(item);
            }

            Console.ReadKey();
        }
    }
}
