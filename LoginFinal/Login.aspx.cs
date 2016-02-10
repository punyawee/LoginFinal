using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace LoginPage
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["project-testConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select * from employee where name_employee='" + User_Tbx.Text + "' and password_employee='" + Pass_Tbx.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            object obj = com.ExecuteScalar();
            conn.Close();
            if (obj != null)
            {
                Session["New"] = User_Tbx.Text;
                Response.Write("Success !");
                Response.Redirect("Manager.aspx");

            }
            else
            {
                Response.Write("Incorrect Username or Password !");
            }
        }

      

    }
}