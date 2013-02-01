using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _003_CicloDeVida
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Livro> lista = new List<Livro>
                {
                    new Livro { Codigo = 1, Titulo = "ABC do Truco" }, 
                    new Livro { Codigo = 2, Titulo = "Palitinho sem Mestre" }, 
                    new Livro { Codigo = 3, Titulo = "SQL é fácil" }, 
                    new Livro { Codigo = 4, Titulo = "C# é bico" }
                };

                DropDownList1.DataSource = lista;

                DropDownList1.DataValueField = "Codigo";
                DropDownList1.DataTextField = "Titulo";

                DropDownList1.DataBind();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = DropDownList1.SelectedValue;
        }
    }
}