using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelBooking
{
    public partial class Gallary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] == null)
            {
                Response.Redirect("UserLogin.aspx");
            }


        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="Cancel")
            {
                int index = Convert.ToInt16(e.CommandArgument);
                string bookingid = GridView1.DataKeys[index].Value.ToString();
                SqlDataSource1.UpdateParameters["BookingId"].DefaultValue=bookingid;
                SqlDataSource1.Update();
                Response.Write("<script>alert('Booking Cancel.')</script>");
            }
        }
    }
}