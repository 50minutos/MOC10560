using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Caching;

namespace _003_Cache
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Cache.Insert("VALOR1", "CONTEÚDO DO VALOR1", null, new DateTime(2013, 12, 31, 23, 59, 59), Cache.NoSlidingExpiration);
 
                Cache.Insert("VALOR2", "CONTEÚDO DO VALOR2", null, Cache.NoAbsoluteExpiration, new TimeSpan(0, 0, 30));
            }

            Label1.Text = Cache["VALOR1"] == null
                ? "SEM CONTEÚDO"
                : Cache["VALOR1"].ToString();

            Label2.Text = Cache["VALOR2"] == null
                ? "SEM CONTEÚDO"
                : Cache["VALOR2"].ToString();
        }
    }
}