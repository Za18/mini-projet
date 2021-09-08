using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace montpetit
{
    public partial class inscription : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlServer"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            CoursSessionDroplist();
        }

        protected void CoursSessionDroplist()
        {

            SqlCommand com = new SqlCommand("select * from Cours", con);
            com.CommandType = CommandType.Text;

            ListCours.DataSource = com.ExecuteReader();
            ListCours.DataTextField = "Description";
            ListCours.DataValueField = "CodeCours";
            ListCours.DataBind();
            ListCours.Items.Insert(0, new ListItem("-- cours --"));

            con.Close();

        }
    }
}