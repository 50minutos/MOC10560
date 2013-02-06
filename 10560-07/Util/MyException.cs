using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Configuration;

namespace Util
{
    public class MyException : Exception
    {
        public MyException(String msg, Exception inn)
            : base(msg, inn)
        {
            var nomeArquivo = String.Format(new AppSettingsReader().GetValue("nomeArquivo", typeof(String)).ToString(), DateTime.Now.ToString("yyyyMMdd"));
            
            using(var arquivo = new StreamWriter(nomeArquivo, true, Encoding.UTF8))
            {
                arquivo.WriteLine("{0} - {1}", DateTime.Now.ToString("HH:mm:ss"), msg);
                
                if(inn != null)
                    arquivo.WriteLine("{0} - {1} - {2}", DateTime.Now.ToString("HH:mm:ss"), inn.GetType().Name, inn.Message); 

                arquivo.Close();
            }
        }

        public MyException(String msg)
            : this(msg, null)
        {

        }
    }
}
