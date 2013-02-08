using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Services;

namespace _005_WS
{
    /// <summary>
    /// Summary description for Service1
    /// </summary>
    [WebService(Namespace = "http://50minutos.com.br/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    public class Calculadora : System.Web.Services.WebService
    {
        [WebMethod]
        public double Somar(double x, double y) { return x + y; }
        
        [WebMethod]
        public double Subtrair(double x, double y) { return x - y; }
        
        [WebMethod]
        public double Multiplicar(double x, double y) { return x * y; }

        [WebMethod]
        public double Dividir(double x, double y) { return x / y; }
    }
}