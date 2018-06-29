using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;


namespace GestionMarché.Handler
{
    /// <summary>
    /// Summary description for SaveMarcheHandler1
    /// </summary>
    public class SaveMarcheHandler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            var returnValue = "Unknown";
            string numMarche = context.Request.Form["numMarche"];
            string nom = context.Request.Form["nom"].ToString();
            string objet = context.Request.Form["objet"].ToString();
            string dateDebut = context.Request.Form["dateDebut"].ToString();
            string ville = context.Request.Form["ville"].ToString();
            string delaiExecution = context.Request.Form["delaiExecution"].ToString();
            float montant =float.Parse( context.Request.Form["montant"]);

            SqlConnection cnx = new SqlConnection("data source =DESKTOP-27LT43K\\SQLEXPRESS; initial Catalog=WebJet; integrated security=true");
            SqlCommand cmd1 = new SqlCommand(" update marche set nom='" + nom + "' , objet='" + objet + "' ,dateDebut='" + dateDebut + "' , ville='" + ville + "', delaiExecution='" + delaiExecution + "',montant=" + montant + " where numMarche='" + numMarche + "' ", cnx);
            cnx.Open();
            if (cmd1.ExecuteNonQuery() > 0)
            {
                returnValue = "OK";
            }
            //This is the template of the JSON string to be written
            string jsonTemplate = @"{{
              ""code"": ""{0}""
            }}";

            context.Response.ContentType = "application/json";
            var jsonReturn = string.Format(jsonTemplate, returnValue);
            //write the JSON return string
            context.Response.Write(jsonReturn);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}