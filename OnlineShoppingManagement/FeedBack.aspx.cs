using System;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShoppingManagement
{
    public partial class FeedBack : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFeedBack_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into Complaint_Feedback_Details(Cmplt_FdbkMsg,EmailId,DateTime) values ('" + txtFeedBack.Text + "','" + Session["UID"].ToString() + "',GETDATE())", con);
            cmd.ExecuteNonQuery();

            lblMsg.Text = "FeedBack Send !";


            con.Close();
        }
    }
}