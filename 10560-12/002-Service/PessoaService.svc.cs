using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace _002_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "PessoaService" in code, svc and config file together.
    public class PessoaService : IPessoaService
    {
        public IEnumerable<Pessoa> GetPessoas()
        {
            return new masterEntities().Pessoas;
        }
    }
}
