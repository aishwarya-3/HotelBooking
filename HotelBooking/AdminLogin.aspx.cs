using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelBooking
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUNM.Text == "admin" && Txtpwd.Text == "admin")
            {
                Response.Redirect("AdminHome.aspx");
            }
            else
            {
                Response.Write("<script>alert('Login Failed!!! Try Again.')</script>");

            }
        }
    }
}