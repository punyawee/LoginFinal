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
    public partial class stock_add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("stock_manage.aspx");
        }

        protected void Button_add_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["project-testConnectionString"].ConnectionString);
            conn.Open();
            string checkname = "select * from choice where name_choice='" + insert_name.Text + "'";
            SqlCommand com = new SqlCommand(checkname, conn);
            object obj = com.ExecuteScalar();
            if (obj != null)
            {
                string message = "Name of Material is already exist !";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
            else
            {
                try
                {

                    string insertQuery = "insert into choice (name_choice, stock_choice, push_choice) values (@nac, @stc, @puc)";
                    SqlCommand com2 = new SqlCommand(insertQuery, conn);
                    com2.Parameters.AddWithValue("@nac", insert_name.Text);
                    com2.Parameters.AddWithValue("@stc", insert_stock.Text);
                    com2.Parameters.AddWithValue("@puc", insert_push.Text);
                    com2.ExecuteNonQuery();
                    conn.Close();

                    string message = "Added !";
                    System.Text.StringBuilder sb = new System.Text.StringBuilder();
                    sb.Append("<script type = 'text/javascript'>");
                    sb.Append("window.onload=function(){");
                    sb.Append("alert('");
                    sb.Append(message);
                    sb.Append("')};");
                    sb.Append("</script>");
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

                    
                }
                catch (Exception ex)
                {
                    Response.Write("Error : " + ex.ToString());
                }
                Response.Redirect("stock_manage.aspx");
            }
        }
    }
}