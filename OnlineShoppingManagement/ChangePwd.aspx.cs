using System;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShoppingManagement
{
    public partial class ChangePwd : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Request.QueryString["UT"] == "A")
                this.MasterPageFile = "Admin.master";
            else if (Request.QueryString["UT"] == "S")
                this.MasterPageFile = "Seller.master";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["UT"] == "A")
                Session["SID"] = Session["UID"].ToString();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["UT"] == "A")
                Response.Redirect("ProfileDetails.aspx?UT=A");

            else if (Request.QueryString["UT"] == "S")
                Response.Redirect("ProfileDetails.aspx?UT=S");
            
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("Update Login_Details set password='" + txtNewPwd.Text + "' where LoginID ='" + Session["SID"].ToString() + "'", con);
            cmd.ExecuteNonQuery();

            Session.Abandon();
            Session.Clear();

            if (Request.QueryString["UT"] == "A")
                Response.Redirect("Login.aspx");
            else if (Request.QueryString["UT"] == "S")
                Response.Redirect("SellerRegistration.aspx");


            con.Close();
        }

        protected void lbtnFgtPwd_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["UT"] == "A")
                Response.Redirect("ResetPassword.aspx?UT=A");
            else if (Request.QueryString["UT"] == "S")
                Response.Redirect("ResetPassword.aspx?UT=S");
        }
    }
}