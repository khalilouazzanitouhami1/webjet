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
    public partial class WebForm6 : System.Web.UI.Page
    {
        Data db = new Data();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                db.s = "select numFournisseur from fournisseur";
                SqlDataAdapter cmd = new SqlDataAdapter(db.s, db.cnx);
                DataTable dt = new DataTable();
                cmd.Fill(dt);
                DropDownlist1.DataSource = dt;
                DropDownlist1.DataBind();
                DropDownlist1.DataTextField = "numFournisseur";
                DropDownlist1.DataBind();

                db.s = "select numMarche from marche";
                SqlDataAdapter c = new SqlDataAdapter(db.s, db.cnx);
                DataTable d = new DataTable();
                c.Fill(d);
                DropDownlist2.DataSource = d;
                DropDownlist2.DataBind();
                DropDownlist2.DataTextField = "numMarche";
                DropDownlist2.DataBind();

                db.s = "select nom from fournisseur";
                SqlDataAdapter ss = new SqlDataAdapter(db.s, db.cnx);
                DataTable ee = new DataTable();
                ss.Fill(ee);
                DropDownlist3.DataSource = ee;
                DropDownlist3.DataBind();
                DropDownlist3.DataTextField = "nom";
                DropDownlist3.DataBind();
            } catch { }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                db.s = "insert into fourniture values('" + TextBox1.Text + "','" + DropDownlist1.Text + "','" +DropDownlist2.Text+"','"+ DropDownlist3.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text +"','"+float.Parse(TextBox5.Text)+"','"+float.Parse(TextBox6.Text)+"')";
                SqlCommand cmd = new SqlCommand(db.s, db.cnx);
                cmd.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                Label1.Visible = true;
                Label1.Text = "erreur : " + ex.Message;
            }
        }

        
    }
}