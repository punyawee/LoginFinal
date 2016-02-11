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
    public partial class stock_remove : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["project-testConnectionString"].ConnectionString);
            conn.Open();

            conn.Close();
        }

        protected void Button_remove_Click(object sender, EventArgs e)
        {

        }

        protected void Button_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("stock_manage.aspx");
        }

    }
}