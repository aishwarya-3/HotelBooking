using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelBooking
{
    public partial class RegisterUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtcpwd_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

            string gender;
                if (rbfemale.Checked)
                {
                    gender = rbfemale.Text;
                }
                else
                {
                    gender = rbmale.Text;
                }

            SqlDataSource1.InsertParameters["Gender"].DefaultValue = gender;
            SqlDataSource1.Insert();

                Response.Write("<script>alert('Registered in Successfully.')</script>");

                Response.Write("<script>window.location.href='UserLogin.aspx';</script>");
            
            

        }
    }
}