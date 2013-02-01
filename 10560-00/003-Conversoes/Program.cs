using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace _003_Conversoes
{
    class Program
    {
        static void Main(string[] args)
        {
            //conversão entre valores compatíveis (p.e. numéricos):
            //cast: (TipoDestino)valor;

            int x = 257;
            //checked
            //{
            byte b = (byte)x; //conversão explícita
            Console.WriteLine(b);
            //}

            double d = x; //conversão implícita
            Console.WriteLine(d);

            //conversão de String para outros tipos de dados simples
            //TipoDestino.Parse(valor)

            String s = "1234";

            x = Int32.Parse(s);
            d = Double.Parse(s);

            s = "2013-01-31";

            DateTime dt = DateTime.Parse(s);

            Console.WriteLine(x);
            Console.WriteLine(d);

            Console.WriteLine(dt);

            Object o = "ffff";

            x = Convert.ToInt32(o.ToString(), 16);

            o = "1234,54321";

            d = Convert.ToDouble(o);

            Console.WriteLine(x);
            Console.WriteLine(d);

            //objetos
            Object r = new Random();

            Random obj = (Random)r;

            Console.WriteLine(obj.Next(1,11));

            //----

            Random novo = r is Random 
                ? (Random)r 
                : null;

            Random outro = r as Random;

            //--------------
            Object o1 = x; //boxing (armazenar value em reference type)

            int xx = (int)o1; //unboxing (extrair o value type)

            Console.ReadKey();
        }
    }
}
