using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _002_Validation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (Nome.Text.Equals("aaa") && Senha.Text.Equals("123"))
                MultiView1.ActiveViewIndex = 1;
            else
                MultiView1.ActiveViewIndex = 2;
        }
    }
}