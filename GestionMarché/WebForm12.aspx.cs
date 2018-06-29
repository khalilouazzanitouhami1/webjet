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
    public partial class WebForm12 : System.Web.UI.Page
    {
        Data db = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {
            db.s = "select num_marche from marche";
            SqlDataAdapter cmd = new SqlDataAdapter(db.s, db.cnx);
            DataTable dt = new DataTable();
            cmd.Fill(dt);
            DropDownList2.DataSource = dt;
            DropDownList2.DataBind();
            DropDownList2.DataTextField = "num_marche";
            DropDownList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                db.s = "insert into decompteDefinitif values('" + TextBox1.Text +"','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text+"','"+TextBox8.Text+"','"+TextBox9.Text+"','"+DropDownList2.Text+"','"+TextBox10.Text+ "',"+int.Parse(TextBox11.Text)+","+int.Parse(TextBox12.Text)+","+int.Parse(TextBox13.Text)+","+int.Parse(TextBox14.Text)+","+int.Parse(TextBox15.Text)+",'"+TextBox16.Text+"','"+TextBox17.Text+"','"+TextBox18.Text+"','"+TextBox19.Text+"',"+int.Parse(TextBox20.Text)+",'"+TextBox21.Text+"',"+float.Parse(TextBox22.Text)+","+float.Parse(TextBox23.Text)+","+float.Parse(TextBox24.Text)+",'"+TextBox25.Text+"')";
                SqlCommand cmd = new SqlCommand(db.s, db.cnx);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Response.Write("<body><script>alert(\"données incorecte\");</script></body>" + ex.Message);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}