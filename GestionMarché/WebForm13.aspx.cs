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
    public partial class WebForm13 : System.Web.UI.Page
    {
        Data db = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {
            db.s = "select num_marche from marche";
            SqlDataAdapter cmd = new SqlDataAdapter(db.s, db.cnx);
            DataTable dt = new DataTable();
            cmd.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
            DropDownList1.DataTextField = "num_marche";
            DropDownList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                db.s = "insert into decompteDefinitif values('" + TextBox1.Text + "','"  + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DropDownList1.Text + "','" +TextBox6.Text + "'," + int.Parse(TextBox7.Text) + "," + int.Parse(TextBox8.Text) +
                    "," + int.Parse(TextBox9.Text )+ "," +int.Parse( TextBox10.Text) + "," + int.Parse(TextBox11.Text) + ",'" + TextBox12.Text + "','" + TextBox13.Text + "','" +TextBox14.Text + "','" +TextBox15.Text+ "'," + float.Parse(TextBox16.Text)+ ",'" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "','" + TextBox21.Text + "'," + int.Parse(TextBox22.Text)+ ",'" +TextBox23.Text+ "'," + float.Parse(TextBox24.Text) + "," + float.Parse(TextBox25.Text )+ "," + float.Parse(TextBox26.Text) +",'"+TextBox27.Text+"',"+float.Parse(TextBox28.Text)+","+float.Parse(TextBox29.Text)+","+float.Parse(TextBox30.Text)+",'"+TextBox31.Text+"','"+TextBox32.Text+"')";
                SqlCommand cmd = new SqlCommand(db.s, db.cnx);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Response.Write("<body><script>alert(\"données incorecte\");</script></body>");
                Button1.Text = "ereur :" + ex.Message;
            }
        }

       
    }
}