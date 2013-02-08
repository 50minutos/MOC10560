using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace _002_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Calculadora" in code, svc and config file together.
    public class Calculadora : ICalculadora
    {
        public double Somar(double x, double y)
        {
            return x + y;
        }

        public double Subtrair(double x, double y)
        {
            return x - y;
        }

        public double Multiplicar(double x, double y)
        {
            return x * y;
        }

        public double Dividir(double x, double y)
        {
            return x / y;
        }

        public double Elevar(double x, double y)
        {
            return Math.Pow(x, y);
        }
    }
}
