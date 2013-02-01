using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _001_CodeBehind
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void TratarClick(Object o, EventArgs ea)
        {
            Label1.Text = "clicou...";

            Button b = o as Button;

            if (b == null) return;

            b.Enabled = false;
        }
    }
}