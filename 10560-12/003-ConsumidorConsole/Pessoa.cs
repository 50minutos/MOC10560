using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ServiceModel;
using System.Runtime.Serialization;

namespace _003_ConsumidorConsole.ProxyPessoa
{
    partial class Pessoa
    {
        public override string ToString()
        {
            return String.Format("{0} - {1} - {2}", Cod, Nome, Sexo);
        }

        public String Escrever() { return "abc"; }
    }
}