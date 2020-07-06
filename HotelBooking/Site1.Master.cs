using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelBooking
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            loginlogout();
        }
        private void loginlogout()
        {
            if (Session["userid"] == null)
            {
                lnkLogin.Visible = true;
                lnkLogout.Visible = false;
            }
            else
            {
                lnkLogin.Visible = false;
                lnkLogout.Visible = true;
            }
        }


        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            Session["userid"] = null;
            loginlogout();
            Response.Redirect("Home.aspx");
        }

        protected void btnAdmin_Click(object sender, EventArgs e)
        {

        }
    }
}