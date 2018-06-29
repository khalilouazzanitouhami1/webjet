using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

namespace GestionMarché.Handler
{
    /// <summary>
    /// Summary description for DeleteMarcheHandler1
    /// </summary>
    public class DeleteMarcheHandler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            var returnValue = "Unknown";
            string numMarche = context.Request.Form["numMarche"];

            SqlConnection cnx = new SqlConnection("data source =DESKTOP-27LT43K\\SQLEXPRESS; initial Catalog=WebJet; integrated security=true");
            SqlCommand cmd = new SqlCommand("delete marche where numMarche='" + numMarche + "' ", cnx);

            
            cnx.Open();
            if (cmd.ExecuteNonQuery() > 0)
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