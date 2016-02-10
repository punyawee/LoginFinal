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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void txt_Submit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["project-testConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select * from employee where name_employee='" + txt_Name.Text +"'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            object obj = com.ExecuteScalar();
            if (obj != null)
            {
                Response.Write("Username is already exist !");

            }
            else
            {
                try
                {
                   
                    string insertQuery = "insert into employee (name_employee, password_employee) values (@nem ,@pem)";
                    SqlCommand com2 = new SqlCommand(insertQuery, conn);
                    com2.Parameters.AddWithValue("@nem", txt_Name.Text);
                    com2.Parameters.AddWithValue("@pem", txt_Password.Text);
                    com2.ExecuteNonQuery();
                    Response.Write("Registration is successful");
                    conn.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("Error : " + ex.ToString());
                }
                Response.Redirect("Default.aspx");
            }
           
        }
    }
}