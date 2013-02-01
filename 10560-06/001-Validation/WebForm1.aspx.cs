using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _001_Validation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calcular(object sender, EventArgs e)
        {
            var x = Double.Parse(P.Text) / Math.Pow(Double.Parse(A.Text), 2);
            IMC.Text = x.ToString();
            MultiView1.ActiveViewIndex = 1;
        }
    }
}