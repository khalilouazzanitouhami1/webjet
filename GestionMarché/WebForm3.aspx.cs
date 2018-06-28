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
    public partial class WebForm3 : System.Web.UI.Page
    {
        Data db = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                db.s = "select numMarche from marche";
                SqlDataAdapter cd = new SqlDataAdapter(db.s, db.cnx);
                DataTable dt = new DataTable();
                cd.Fill(dt);
                DropDownlis1.DataSource = dt;
                DropDownlis1.DataBind();
                DropDownlis1.DataTextField = "numMarche";
                DropDownlis1.DataBind();
            }
            catch
            {
                Response.Write("<body><script>alert(\"données incorecte \");</script></body>");
            }
            
            
        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                db.s = "insert into Atm values('" + TextBox1.Text + "','" + DropDownlis1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')";
                SqlCommand cmd = new SqlCommand(db.s, db.cnx);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Response.Write("<body><script>alert(\"données incorecte \");</script></body>");
                Button1.Text = "erreur :" + ex.Message;
            }
        }
    }
}