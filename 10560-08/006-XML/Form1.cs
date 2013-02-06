using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace _006_XML
{
    public partial class Form1 : Form
    {
        private DataSet ds;
        private String nomeArquivo;

        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var ofd = new OpenFileDialog();
            
            ofd.Filter = "arquivos de cadastro|*.xml";

            if (ofd.ShowDialog() == DialogResult.OK)
            {
                ds = new DataSet();

                ds.ReadXml(nomeArquivo = ofd.FileName);
                
                dataGridView1.DataSource = ds.Tables[0];
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            ds.WriteXml(nomeArquivo);

            MessageBox.Show("Foi de novo!!!");
        }
    }
}
