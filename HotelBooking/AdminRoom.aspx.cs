using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelBooking
{
    public partial class AdminRoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                btnUpdate.Enabled = false;
                
            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
          SqlDataSource1.Insert();
            filupload.SaveAs(Server.MapPath("roomimages/") + filupload.FileName);
            Response.Write("<script>alert('Room added Successfully.')</script>");
        }

        protected void GV_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnUpdate.Enabled = true;
            btnSave.Enabled = false;
            ddlRType.Text= GV.SelectedRow.Cells[2].Text;
            txtRNo.Text = GV.SelectedRow.Cells[3].Text;
            txtRate.Text = GV.SelectedRow.Cells[4].Text;
            txtRFacilities.Text = GV.SelectedRow.Cells[5].Text;
            
          

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            btnUpdate.Enabled = false;
            btnSave.Enabled = true;
            ddlRType.Text = "";
            txtRNo.Text = "";
            txtRate.Text = "";
            txtRFacilities.Text = "";
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
            Response.Write("<script>alert('Updated Successfully.')</script>");
        }
    }
}