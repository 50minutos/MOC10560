using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace _003_xxxDataAdapter
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

            var cs = @"Data Source=.\SqlExpress;Initial Catalog=master;Integrated Security=true;";

            var cmd = "select * from sys.objects";

            var da = new SqlDataAdapter(cmd, cs);

            //var ds = new DataSet();

            //da.Fill(ds);

            //dataGridView1.DataSource = ds.Tables[0];

            var dt = new DataTable();

            da.Fill(dt);

            dataGridView1.DataSource = dt;
        }
    }
}
