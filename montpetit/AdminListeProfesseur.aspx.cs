using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace montpetit
{
    public partial class AdminListeProfesseur : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlServer"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if (!Page.IsPostBack)
            {
                AfficheProf();
            }

        }
        protected void AfficheProf()
        {
            SqlCommand cmd = new SqlCommand("select * from Professeur", con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "Num_Prof");

            GridView1.DataSourceID = null;
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Del")
            {
                int Id = Convert.ToInt32(e.CommandArgument);
                string cmdText = "DELETE FROM professeur WHERE Num_Prof=@Num_Prof";
                SqlCommand cmd = new SqlCommand(cmdText, con);
                cmd.Parameters.AddWithValue("@Num_Prof", Id);
                cmd.ExecuteNonQuery();

                AfficheProf();
            }

            if (e.CommandName == "Edt")
            {
                GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                TextBox name = (TextBox)GridView1.Rows[row.RowIndex].FindControl("txtNom");
                TextBox firstName = (TextBox)GridView1.Rows[row.RowIndex].FindControl("txtPrenom");
                TextBox tel = (TextBox)GridView1.Rows[row.RowIndex].FindControl("txtTel");
                TextBox adr = (TextBox)GridView1.Rows[row.RowIndex].FindControl("txtAdr");
                int Id = Convert.ToInt32(e.CommandArgument);
                string cmdText = "UPDATE Professeur SET Nom_Prof=@name, Prenom_Prof=@firstName, NumTel_Prof=@tel, Adresse_Prof=@adr WHERE Num_Prof=@Num_Prof";
                SqlCommand cmd = new SqlCommand(cmdText, con);
                cmd.Parameters.AddWithValue("@Num_Prof", Id);
                cmd.Parameters.AddWithValue("@name", name.Text);
                cmd.Parameters.AddWithValue("@firstName", firstName.Text);
                cmd.Parameters.AddWithValue("@tel", tel.Text);
                cmd.Parameters.AddWithValue("@adr", adr.Text);             
                cmd.ExecuteNonQuery();

                GridView1.EditIndex = -1;
                this.AfficheProf();
            }
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.AfficheProf();
        }



        protected void OnCancel(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            this.AfficheProf();
        }

    }
}
