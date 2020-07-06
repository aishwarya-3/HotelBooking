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
    public partial class AdminBilling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["bookingid"] != null)
            {
                txtBid.Text = Request.QueryString["bookingid"].ToString();
            }
            string strCon = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = strCon;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from Booking where BookingId=@BookingId";
            cmd.Parameters.AddWithValue("@BookingId", txtBid.Text.Trim());
            //cmd.Parameters.AddWithValue("@FirstNm", txtCnm.Text.Trim());
            //cmd.Parameters.AddWithValue("@BookingStatus", txtBStatus.Text.Trim());
            //cmd.Parameters.AddWithValue("@CheckInDate", txtCin.Text.Trim());
            //cmd.Parameters.AddWithValue("@CheckOutDate", txtCOut.Text.Trim());
            //cmd.Parameters.AddWithValue("@RoomNo", txtRNo.Text.Trim());
            //cmd.Parameters.AddWithValue("@RoomType", txtRtyp.Text.Trim());
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            da.SelectCommand = cmd;
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                txtCnm.Text = dt.Rows[0]["FirstNm "].ToString();
                txtBStatus.Text = dt.Rows[0]["BookingStatus"].ToString();
                txtCin.Text = Convert.ToDateTime(dt.Rows[0]["CheckInDate"].ToString()).ToString("dd/MM/yyyy");
                txtCOut.Text = Convert.ToDateTime(dt.Rows[0]["CheckOutDate"].ToString()).ToString("dd/MM/yyyy");
                txtRNo.Text = dt.Rows[0]["RoomNo"].ToString();
                txtRtyp.Text = dt.Rows[0]["RoomType"].ToString();
                txtRate.Text = dt.Rows[0]["RoomRate "].ToString();
            }
            if (!Page.IsPostBack)
            {
                SetInitialRow();
            }

        }
        private void SetInitialRow()
        {
            DataTable dt = new DataTable();
            DataRow dr = null;
            dt.Columns.Add(new DataColumn("SrNo", typeof(string)));
            dt.Columns.Add(new DataColumn("Column1", typeof(string)));
            dt.Columns.Add(new DataColumn("Column2", typeof(string)));
            dr = dt.NewRow();
            dr["SrNo"] = 1;
            dr["Column1"] = string.Empty;
            dr["Column2"] = string.Empty;
            dt.Rows.Add(dr);
            ViewState["CurrentTable"] = dt;
            GV.DataSource = dt;
            GV.DataBind();

        }

            protected void btnAdd_Click(object sender, EventArgs e)

        {
           


        }
        private void AddNewRowToGrid()

        {

            int rowIndex = 0;



            if (ViewState["CurrentTable"] != null)

            {

                DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];

                DataRow drCurrentRow = null;

                if (dtCurrentTable.Rows.Count > 0)

                {

                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)

                    {

                        //extract the TextBox values

                        TextBox box1 = (TextBox)GV.Rows[rowIndex].Cells[1].FindControl("txtServices");

                        TextBox box2 = (TextBox)GV.Rows[rowIndex].Cells[2].FindControl("txtCharges");

                        



                        drCurrentRow = dtCurrentTable.NewRow();

                        drCurrentRow["SrNo"] = i + 1;



                        dtCurrentTable.Rows[i - 1]["Column1"] = box1.Text;

                        dtCurrentTable.Rows[i - 1]["Column2"] = box2.Text;

                        



                        rowIndex++;

                    }

                    dtCurrentTable.Rows.Add(drCurrentRow);

                    ViewState["CurrentTable"] = dtCurrentTable;



                    GV.DataSource = dtCurrentTable;

                    GV.DataBind();

                }

            }

            else

            {

                Response.Write("ViewState is null");

            }



            //Set Previous Data on Postbacks

            SetPreviousData();

        }
        private void SetPreviousData()

        {

            int rowIndex = 0;

            if (ViewState["CurrentTable"] != null)

            {

                DataTable dt = (DataTable)ViewState["CurrentTable"];

                if (dt.Rows.Count > 0)

                {

                    for (int i = 0; i < dt.Rows.Count; i++)

                    {

                        TextBox box1 = (TextBox)GV.Rows[rowIndex].Cells[1].FindControl("txtServices");

                        TextBox box2 = (TextBox)GV.Rows[rowIndex].Cells[2].FindControl("txtCharges");

                        



                        box1.Text = dt.Rows[i]["Column1"].ToString();

                        box2.Text = dt.Rows[i]["Column2"].ToString();

                        


                        rowIndex++;

                    }

                }

            }

        }

        protected void GV_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            AddNewRowToGrid();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();

            string strCon = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = strCon;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select BillId from BillingMaster where BookingId=@BookingId ";
            cmd.Parameters.AddWithValue("@BookingId", txtBid.Text.Trim());
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            da.SelectCommand = cmd;
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                String BillId= dt.Rows[0]["BillId"].ToString();
                DataTable dt1 = (DataTable)ViewState["CurrentTable"];
                foreach(DataRow dr in dt1.Rows)
                {
                    cmd.Parameters.Clear();
                    cmd.CommandText = "insert into BillingDetail (BillId, Facilities, Charges) values (@BillId, @Facilities, @Charges) ";
                    cmd.Parameters.AddWithValue("@BillId", BillId);
                    cmd.Parameters.AddWithValue("@Facilities",dr["Column1"]);
                        
                    cmd.Parameters.AddWithValue("@Charges", dr["Column2"]);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
                Response.Write("<script>alert('Bill added Successfully.')</script>");

            {
                lblBidT.Text = txtBid.Text;
                lblNmT.Text = txtCnm.Text;

                lblBookStT.Text = txtBStatus.Text;
                lblCIDT.Text = txtCin.Text;
                lblCODT.Text = txtCOut.Text;
                lblROOMNOT.Text = txtRNo.Text;
                lblROOMTYPT.Text = txtRtyp.Text;
                lblRateT.Text = txtRate.Text;
                //lblSERVICEST.Text = Column1.Text;
                //    lblCHARGEST.Text =
                lblTOTALT.Text = txtTotal.Text;
                lblDIST.Text = txtDiscount.Text;
                lblSUBT.Text = txtSubTotal.Text;
                lblBSTS.Text = txtBillStatus.Text;
            }
        }

        protected void btnConnect_Click(object sender, EventArgs e)
        { }

        protected void btnPrnt_Click(object sender, EventArgs e)
        {
            
        }
    }
    }