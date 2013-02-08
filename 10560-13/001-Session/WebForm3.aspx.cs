using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _001_Session
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NOME"] == null || Session["RANDOM"] == null)
                Response.Redirect("~/WebForm2.aspx");

            var r = Session["RANDOM"] as Random;

            if(r == null)
                Response.Redirect("~/WebForm2.aspx");

            Label0.Text = Session.SessionID;
            Label1.Text = Session["NOME"].ToString();
            Label2.Text = r.Next(1, 100).ToString();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            
            var pagina = Request.ServerVariables["URL"];

            Response.Redirect(pagina);
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Session.Remove("NOME");

            var pagina = Request.ServerVariables["URL"];

            Response.Redirect(pagina);
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            foreach (String item in Session)
            {
                Response.Write(String.Format("<pre>{0} -> {1}</pre>", item,  Session[item]));
            }
        }
    }
}