using System;
using Util;
using System.Diagnostics;

namespace _001_Site
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Trace.Warn("ini");
            //Trace.Write("ini");
            //Debug.Print("opa... vou imprimir");
            CriarProduto();
            //Debug.Print("já imprimi");
            //Trace.Warn("fim");
            //Trace.Write("fim");

            MostrarMyException();
        }

        private void MostrarMyException()
        {
            throw new MyException("mensagem da minha Exception");
        }

        private void CriarProduto()
        {
            //Debug.Print("dentro do CriarProduto - ini");
            var p = new Produto(1, "MARTELO", 10);
            Response.Write(p);
            //Debug.Print("dentro do CriarProduto - fim");
        }
    }
}