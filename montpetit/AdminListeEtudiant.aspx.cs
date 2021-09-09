using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace montpetit
{
    
    public partial class AdminListeEtudiant : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlServer"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand command = new SqlCommand();
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataSet ds = new DataSet();
            command.Connection = con;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "EtudiantsInscrits";
            adapter = new SqlDataAdapter(command);
            adapter.Fill(ds);
            con.Close();
            EtudiantsGridView.DataSource = ds.Tables[0];
            EtudiantsGridView.DataBind();
        }
    }
}


