using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace _003_ConsumidorConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            foreach (var item in new ProxyPessoa.PessoaServiceClient().GetPessoas())
            {
                Console.WriteLine(item);
                Console.WriteLine(item.Escrever());
            }



            Console.ReadKey();
        }
    }
}
