using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace _005_xxxDataAdapterUpdate
{
    public partial class Form1 : Form
    {
        private DataTable dt;
        private SqlDataAdapter da;

        public Form1()
        {
            InitializeComponent();

            Ler();
        }

        private void Ler()
        {
            var cmd = "SELECT * FROM PESSOA";
            var cs = "Data Source=.\\sqlexpress;Initial Catalog=MASTER;Integrated Security=true;";

            da = new SqlDataAdapter(cmd, cs);
            dt = new DataTable("PESSOAS");

            da.Fill(dt);

            dataGridView1.DataSource = dt;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            new SqlCommandBuilder(da);

            da.Update(dt);

            Ler();
            
            MessageBox.Show("Foi");
        }
    }
}
