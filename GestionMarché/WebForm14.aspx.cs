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
    public partial class WebForm14 : System.Web.UI.Page
    {
        Data db = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {
            db.s = "select numMarche from marche";
            SqlDataAdapter cmd = new SqlDataAdapter(db.s, db.cnx);
            DataTable dt = new DataTable();
            cmd.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
            DropDownList1.DataTextField = "numMarche";
            DropDownList1.DataBind();

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                db.s = "insert into documentCautionDefinitv values('" + TextBox1.Text + "','" + DropDownList1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text+ "','"+TextBox8.Text+"','"+TextBox9.Text+"','"+TextBox10.Text+"')";
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