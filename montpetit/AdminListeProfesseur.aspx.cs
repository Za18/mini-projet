using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace montpetit
{
    public partial class AdminListeProfesseur : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlServer"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            AfficheProf();


        }
        protected void AfficheProf()
        {
            SqlCommand command = new SqlCommand();
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataSet ds = new DataSet();
            command.Connection = con;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "GetProf";
            adapter = new SqlDataAdapter(command);
            adapter.Fill(ds);
            con.Close();
            prof.DataSource = ds.Tables[0];
            prof.DataBind();
        }
        protected void prof_RowDeleting(object sender, GridViewDeleteEventArgs e)

        {
            int id = Convert.ToInt32(prof.DataKeys[e.RowIndex].Value.ToString());
            SqlCommand cmd = new SqlCommand("DeleteProf", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id_prof", id);
            cmd.ExecuteNonQuery();
            con.Close();
            AfficheProf();
        }
    }
}