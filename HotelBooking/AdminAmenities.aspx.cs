using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelBooking
{
    public partial class AdminAmenities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnUpdate.Enabled = false;

            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource1.Insert();
                filupload.SaveAs(Server.MapPath("Amenities/") + filupload.FileName);
                Response.Write("<script>alert('Room added Successfully.')</script>");
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"')</script>");

            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            btnUpdate.Enabled = false;
            btnSave.Enabled = true;
        }

        protected void GV_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnUpdate.Enabled = true;
            btnSave.Enabled = false;
        }
    }
}