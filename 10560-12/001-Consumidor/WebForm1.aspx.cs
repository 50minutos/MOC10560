using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _001_Consumidor
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var c = new ProxyCalculadora.CalculadoraClient();

            Response.Write("<p>" + c.Somar(10, 3).ToString() + "</p>");
            Response.Write("<p>" + c.Subtrair(10, 3).ToString() + "</p>");
            Response.Write("<p>" + c.Multiplicar(10, 3).ToString() + "</p>");
            Response.Write("<p>" + c.Dividir(10, 3).ToString() + "</p>");
            Response.Write("<p>" + c.Elevar(10, 3).ToString() + "</p>");
        }
    }
}