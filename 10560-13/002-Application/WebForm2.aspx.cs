using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _002_Application
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Application.Lock();
            Application["EMAIL"] = Email.Text;
            Application.UnLock();

            Response.Redirect("~/WebForm1.aspx");
        }
    }
}