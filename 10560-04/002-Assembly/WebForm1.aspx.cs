using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _002_Assembly
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(Util.Calculadora.Somar(10, 3));
            //Response.Write("<hr/>");
            //Response.Write(Util.Calculadora.Subtrair(10, 3));
            //Response.Write("<hr/>");
            //Response.Write(Util.Calculadora.Multiplicar(10, 3));
            //Response.Write("<hr/>");
            //Response.Write(Util.Calculadora.Dividir(10, 3));
        }

        protected void Calcular(Object o, EventArgs ea)
        {
            var txt = ((Button)o).Text;
            var n1 = Double.Parse(x.Text);
            var n2 = Double.Parse(y.Text);

            switch (txt)
            {
                case "+": Label1.Text = Util.Calculadora.Somar(n1, n2).ToString(); break;
                case "-": Label1.Text = Util.Calculadora.Subtrair(n1, n2).ToString(); break;
                case "*": Label1.Text = Util.Calculadora.Multiplicar(n1, n2).ToString(); break;
                case "/": Label1.Text = Util.Calculadora.Dividir(n1, n2).ToString(); break;
            }
        }
    }
}