using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace GestionMarché
{
    public class Data
    {
        public SqlConnection cnx;
        public SqlCommand cmd;
        public SqlDataReader dr;
        public string s;

        public Data()
        {
            this.cnx = new SqlConnection(@"Data Source=DESKTOP-C0SHTQO\;Initial Catalog=WebJet;Integrated Security=True");
            this.cmd = new SqlCommand();
            if (cnx.State == ConnectionState.Closed)
            {
                cnx.Open();
            }

            this.cmd.Connection = this.cnx;
        }
    }
}