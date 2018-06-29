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
    /// Summary description for MarcheDataHandler1
    /// </summary>
    public class MarcheDataHandler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
           

            int displayLength = int.Parse(context.Request["iDisplayLength"]);
            int displayStart = int.Parse(context.Request["iDisplayStart"]);
            int sortCol = int.Parse(context.Request["iSortCol_0"]);
            string sortDir = context.Request["sSortDir_0"];
            string search = context.Request["sSearch"];
      
           
            SqlConnection cnx = new SqlConnection("data source =DESKTOP-27LT43K\\SQLEXPRESS; initial Catalog=WebJet; integrated security=SSPI");
            List<Marche> ListMarches = new List<Marche>();
           
            
            int filteredCount = 0;
            // using (SqlConnection con = new SqlConnection(cnx))
            //{
            SqlCommand cmd = new SqlCommand("SpGetMarche", cnx);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter paramDisplayLentgh = new SqlParameter()
            {
                ParameterName = "@DisplayLength",
                Value = displayLength

            };
            cmd.Parameters.Add(paramDisplayLentgh);

            SqlParameter paramDisplayStart = new SqlParameter()
            {
                ParameterName = "@DisplayStart",
                Value = displayStart

            };
            cmd.Parameters.Add(paramDisplayStart);

            SqlParameter paramSortCol = new SqlParameter()
            {
                ParameterName = "@SortCol",
                Value = sortCol

            };
            cmd.Parameters.Add(paramSortCol);

            SqlParameter paramSortDir = new SqlParameter()
            {
                ParameterName = "@SortDir",
                Value = sortDir

            };
            cmd.Parameters.Add(paramSortDir);

            SqlParameter paramSearch = new SqlParameter()
            {
                ParameterName = "@Search",
                Value = search

            };
            cmd.Parameters.Add(paramSearch);
            cnx.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Marche marche = new Marche();
                marche.numMarche = dr["numMarche"].ToString();
                filteredCount = Convert.ToInt32(dr["TotalCount"]);
                marche.nom = dr["nom"].ToString();
                marche.objet = dr["objet"].ToString();
                marche.dateDebut = dr["dateDebut"].ToString();
                marche.delaiExecution = dr["delaiExecution"].ToString();
                marche.ville = dr["ville"].ToString();
                String montant = dr["montant"].ToString();
                marche.montant =float.Parse(montant);
                ListMarches.Add(marche);
               

            }
           

            var result = new
            {
                iTotalRecords = GetMarcheTotalCount(),
                iTotalDisplayRecords = filteredCount,
                aaData = ListMarches

            };
            JavaScriptSerializer js = new JavaScriptSerializer();
            context.Response.Write(js.Serialize(result));
        }
        private int GetMarcheTotalCount()
        {
            int count = 0;
            SqlConnection cnx = new SqlConnection("data source =DESKTOP-27LT43K\\SQLEXPRESS; initial Catalog=WebJet; integrated security=SSPI");
            SqlCommand cmd = new SqlCommand("select count(*) from marche ", cnx);
            cnx.Open();
            count = (int)cmd.ExecuteScalar();
           
            return count;
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