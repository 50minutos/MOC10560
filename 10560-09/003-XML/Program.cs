using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Linq;

namespace _003_XML
{
    class Program
    {
        static void Main(string[] args)
        {
            var elementos = new XElement("produtos",
                    new XElement("produto",
                        new XAttribute("id", 1),
                        new XElement("nome", "martelo"),
                        new XElement("preco", "12.32")
                    ),
                    new XElement("produto",
                        new XAttribute("id", 2),
                        new XElement("nome", "marreta"),
                        new XElement("preco", "12.43")
                    )
                );

            Console.WriteLine(elementos);

            Console.ReadKey();
        }
    }
}
