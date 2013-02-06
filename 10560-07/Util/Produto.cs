using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Util
{
    public class Produto
    {
        public int Codigo { get; private set; }
        public String Nome { get; private set; }
        public double Preco { get; private set; }

        public Produto(int codigo, String nome, double preco)
        {
            Codigo = codigo;
            Nome = nome;
            Preco = preco;
        }

        public override string ToString()
        {
            return String.Format("{0} -> {1} - {2:c}", Codigo, Nome, Preco);
        }
    }
}
