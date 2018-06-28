using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace GestionMarché
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        Data db = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string message = string.Empty;
            try
            {
                db.s = "insert into fournisseurEtranger values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text+ "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + float.Parse(TextBox7.Text) +"','"+float.Parse(TextBox8.Text)+"','"+TextBox9.Text+"','"+TextBox10.Text+"','"+TextBox11.Text+"')";
                SqlCommand cmd = new SqlCommand(db.s, db.cnx);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Response.Write("<body><script>alert(\"données incorecte\");</script></body>" +ex.Message);
                
            }

        }
    }
}