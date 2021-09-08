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
            if (!Page.IsPostBack)
            { CoursSessionDroplist(); }
        }

        protected void CoursSessionDroplist()
        {

            SqlCommand com = new SqlCommand("select * from Cours", con);
            com.CommandType = CommandType.Text;

            ListCours.DataSource = com.ExecuteReader();
            ListCours.DataTextField = "Description_Cours";
            ListCours.DataValueField = "Code_Cours";
            ListCours.DataBind();
            ListCours.Items.Insert(0, new ListItem("-- cours --"));

            con.Close();
            ListSession.Items.Insert(0, new ListItem("-- session --"));
        }
        protected void CodeCours_SelectedIndexChanged(object sender, EventArgs e)
        {

            ListSession.Items.Clear();
            SqlCommand com2 = new SqlCommand();
            com2.CommandType = CommandType.StoredProcedure;
            com2.CommandText = "GetSessionCours";
            com2.Parameters.Add("@Code_Cours", SqlDbType.NVarChar).Value = ListCours.SelectedItem.Value;
            com2.Connection = con;
            ListSession.DataSource = com2.ExecuteReader();
            ListSession.DataTextField = "description";
            ListSession.DataValueField = "Code_Session";
            ListSession.DataBind();
            ListSession.Items.Insert(0, new ListItem("-- session --"));
            con.Close();


        }


    }
}