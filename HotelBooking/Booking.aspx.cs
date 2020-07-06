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
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] == null)
            {
                Response.Redirect("UserLogin.aspx");
            }
            string strCon = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = strCon;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from Room";
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            da.SelectCommand = cmd;
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

           if( Request.QueryString["roomno"]!=null)
            {
                txtRNo.Text = Request.QueryString["roomno"].ToString();
            }
        }
        
        protected void btnCA_Click(object sender, EventArgs e)
        {
            
                string strCon = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = strCon;
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
            cmd.CommandText = "select RoomNo from Booking where CheckInDate>=@CheckInDate and CheckOutDate<=@CheckOutDate and RoomNo=@RoomNo  ";
            cmd.Parameters.AddWithValue("@CheckInDate", txtCin.Text.Trim());
            cmd.Parameters.AddWithValue("@CheckOutDate", txtCout.Text.Trim());
            cmd.Parameters.AddWithValue("@RoomNo", txtRNo.Text.Trim());

            
            SqlDataAdapter da = new SqlDataAdapter();
                DataTable dt = new DataTable();
                da.SelectCommand = cmd;
                da.Fill(dt);
            
            if ((dt.Rows.Count >= 1))
            {
                Response.Write("<script>alert('Room is not available.')</script>");

            }
            else
            {
                Response.Write("<script>alert('Room is available.')</script>");
            }




        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtRNo.Text = GridView1.SelectedRow.Cells[4].Text;
            txtRTyp.Text = GridView1.SelectedRow.Cells[3].Text;
            txtRRate.Text = GridView1.SelectedRow.Cells[5].Text;

        }

        protected void btncnfrm_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
            
            Response.Write("<script>alert('Booking Successfull.')</script>");


        }
    }
}