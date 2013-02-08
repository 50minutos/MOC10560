using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Caching;

namespace _003_Cache
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Origem.Text = "CACHE";

            if (Cache["TEXTO"] == null)
            {
                var nomeArquivo = Server.MapPath("Arquivo.txt");

                var cd = new CacheDependency(nomeArquivo);
                
                var arquivo = new StreamReader(nomeArquivo);

                Cache.Insert("TEXTO", arquivo.ReadToEnd().Replace("\n", "<br />"), cd);

                arquivo.Close();

                Origem.Text = "DISCO";
            }

            Texto.Text = Cache["TEXTO"].ToString();
        }
    }
}