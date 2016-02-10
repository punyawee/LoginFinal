using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginPage
{
    public partial class stock : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_add_Click(object sender, EventArgs e)
        {
            Response.Redirect("stock_add.aspx");
        }

        protected void button_remove_Click(object sender, EventArgs e)
        {
            Response.Redirect("stock_remove.aspx");
        }
    }
}