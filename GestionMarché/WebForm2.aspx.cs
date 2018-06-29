using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace GestionMarché
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        Data db = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                db.s = "insert into marche values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + float.Parse(TextBox7.Text) + "')";
                SqlCommand cmd = new SqlCommand(db.s, db.cnx);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                
                Label1.Visible = true;
                Label1.Text = "erreur : " + ex.Message;
            }
        }
    }
}