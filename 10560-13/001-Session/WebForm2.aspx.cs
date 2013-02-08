using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _001_Session
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Session.Add("NOME", "AGNALDO");

            var r = new Random();

            Session["RANDOM"] = r;

            /*
                . - diretório atual
                .. - diretório pai
                / - diretório raiz do site
                ~/ - diretório de contexto
             */

            Response.Redirect("~/WebForm3.aspx");
        }
    }
}