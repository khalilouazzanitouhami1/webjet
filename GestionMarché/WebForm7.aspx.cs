﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace GestionMarché
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        Data db = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {
            db.s = "select numMarche from marche";
            SqlDataAdapter cmd = new SqlDataAdapter(db.s, db.cnx);
            DataTable dt = new DataTable();
            cmd.Fill(dt);
            DropDownlist1.DataSource = dt;
            DropDownlist1.DataBind();
            DropDownlist1.DataTextField = "numMarche";
            DropDownlist1.DataBind();
        }

        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                db.s = "insert into Deplacement values('" + TextBox1.Text + "','" + DropDownlist1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + float.Parse(TextBox5.Text) +"','"+ float.Parse(TextBox5.Text)+ "')";
                SqlCommand cmd = new SqlCommand(db.s, db.cnx);
                cmd.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                Response.Write("<body><script>alert(\"données incorecte \");</script></body>");
                Button1.Text = "Erreur :" + ex.Message;
            }
        }

       
    }
}