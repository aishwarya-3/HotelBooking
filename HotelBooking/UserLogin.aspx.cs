using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelBooking
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string strCon = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = strCon;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from Customer where EmailId=@uname and Password=@pwd";
            cmd.Parameters.AddWithValue("@uname", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@pwd", txtpwd.Text.Trim());
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            da.SelectCommand = cmd;
            da.Fill(dt);
            if ((dt.Rows.Count >= 1))
            {

                Session["userid"] = dt.Rows[0]["CustomerId"].ToString();

                Response.Write("<script>alert('Logged in Successfully.')</script>");

                Response.Write("<script>window.location.href='Home.aspx';</script>");
            }

            else
            {
                Response.Write("<script>alert('Login Failed!!! Try Again.')</script>");
            }
        }
    }
}
    
