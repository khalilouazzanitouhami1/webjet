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
    /// Summary description for UpdateMarcheHandler1
    /// </summary>
    public class UpdateMarcheHandler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            
            
            var data = "";
            String numMarche = context.Request.Form["numMarche"];
            var returnValue = "Unknown";
            SqlConnection cnx = new SqlConnection("data source =DESKTOP-27LT43K\\SQLEXPRESS; initial Catalog=WebJet; integrated security=true");
            List<Marche> ListMarche = new List<Marche>();
            SqlCommand cmd = new SqlCommand("select * from marche where numMarche='" + numMarche + "' ", cnx);
            cnx.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            Marche marche = new Marche();
            while (dr.Read())
            {

               
                marche.numMarche = dr["numMarche"].ToString();
                marche.nom = dr["nom"].ToString();
                marche.objet = dr["objet"].ToString();
                marche.dateDebut = dr["dateDebut"].ToString();
                marche.delaiExecution = dr["delaiExecution"].ToString();
                marche.ville = dr["ville"].ToString();
                String montant = dr["montant"].ToString();
                marche.montant = float.Parse(montant);
                



            }



            if (dr.FieldCount != 0)
            {
                returnValue = "OK";
                var serializer = new JavaScriptSerializer();
                data = serializer.Serialize(

                new //This is an anonymous object with all the contents converted to string so we prepare everything to be packed on the JSON string
                {
                    numMarche = marche.numMarche,
                    nom = marche.nom,
                    objet = marche.objet,
                    dateDebut = marche.dateDebut,
                    delaiExecution = marche.delaiExecution,
                    ville=marche.ville,
                    montant=marche.montant

                }
                );
            }



            else
            {
                //There is no customer with that ID
                returnValue = "NotFound";
            }


            /* var result = new
             {

                 aaData = ListEmployees

             };*/





            // JavaScriptSerializer js = new JavaScriptSerializer();
            //   returnValue = "OK";
            string jsonTemplate = @"{{
               ""code"": ""{0}"",
               ""data"": {1} 
             }}";

            context.Response.ContentType = "application/json";
            var jsonReturn = string.Format(jsonTemplate, returnValue, data);
            context.Response.Write(jsonReturn); //writes out the JSON packed string
                                                //  context.Response.Write(js.Serialize(result));
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