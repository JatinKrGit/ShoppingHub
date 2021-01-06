using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace OnlineShoppingManagement
{
    public partial class ViewComplaintFeedBack : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Request.QueryString["UT"] == "A")
                this.MasterPageFile = "Admin.Master";
            else if (Request.QueryString["UT"] == "S")
                this.MasterPageFile = "seller.Master";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                GridBind();
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lblCFID = (Label)grvFeedBackComplaint.Rows[e.RowIndex].FindControl("lblCmpFdID");
            TextBox txtResponse = (TextBox)grvFeedBackComplaint.Rows[e.RowIndex].FindControl("txtResponse");

            con.Open();

            cmd = new SqlCommand("update Complaint_Feedback_Details Set Response ='" + txtResponse.Text + "' where Cmplt_Fdbk_Id=" + lblCFID.Text + "", con);
            cmd.ExecuteNonQuery();

            con.Close();

            grvFeedBackComplaint.EditIndex = -1;
            GridBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grvFeedBackComplaint.EditIndex = e.NewEditIndex;
            GridBind();
        }

        private void GridBind()
        {
            con.Open();
            cmd = new SqlCommand("Select * from Complaint_Feedback_Details", con);
            dr = cmd.ExecuteReader();


            if (dr.HasRows == true)
            {

                grvFeedBackComplaint.DataSource = dr;
                grvFeedBackComplaint.DataBind();
            }
            con.Close();


        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grvFeedBackComplaint.EditIndex = -1;
            GridBind();
        }
    }
}