using System;
using System.Data;
using System.Data.SqlClient; 


namespace OnlineShoppingManagement
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
        SqlDataReader dr;
        

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Request.QueryString["UT"] == "A")
                this.MasterPageFile = "Admin.master";
            else if (Request.QueryString["UT"] == "C")
                this.MasterPageFile = "Customer.master";
            else if (Request.QueryString["UT"] == "S")
                this.MasterPageFile = "Seller.master";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                txtEmail.Focus();
            }
        }

        protected void btnVerify_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["UT"] == "A")
                VerifyPassword();

            else if (Request.QueryString["UT"] == "C")
                VerifyPassword();

            else if (Request.QueryString["UT"] == "S")
                VerifySellerPassword();

            else if (Request.QueryString["UT"] == "SPWD")
                VerifySellerPassword();

            else
                VerifyPassword();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("Update Login_Details set password='" + txtNewPwd.Text + "' where LoginID ='" + txtEmail.Text+"'", con);
            cmd.ExecuteNonQuery();

            if (Request.QueryString["UT"] == "SPWD")
                Response.Redirect("SellerRegistration.aspx");

            else if (Request.QueryString["UT"] == "S")
                Response.Redirect("SellerRegistration.aspx");

            else
                Response.Redirect("Login.aspx");


            con.Close();
        }

        private void VerifyPassword()
        {
            con.Open();
            cmd = new SqlCommand("  select * from Registration_Details where EmailId='" + txtEmail.Text + "' And MobileNo=" + txtMobile.Text + "", con);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows == true)
            {
                txtEmail.Visible = false;
                txtMobile.Visible = false;
                txtNewPwd.Visible = true;
                txtCnfrmNewPwd.Visible = true;
                btnVerify.Visible = false;
                btnSave.Visible = true;
                lblMsg.Visible = false;
                RequiredNewPwd.Visible = false;
                RequiredCnfrmPwd.Visible = false;
            }
            else
            {
                lblMsg.Text = "Please check your Email or Mobile No !";
                RequiredNewPwd.Visible = false;
                RequiredCnfrmPwd.Visible = false;
            }

            con.Close();
        }

        private void VerifySellerPassword()
        {
            con.Open();
            cmd = new SqlCommand("  select * from Seller_Details where EmailId='" + txtEmail.Text + "' And MobileNo=" + txtMobile.Text + "", con);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows == true)
            {
                txtEmail.Visible = false;
                txtMobile.Visible = false;
                txtNewPwd.Visible = true;
                txtCnfrmNewPwd.Visible = true;
                btnVerify.Visible = false;
                btnSave.Visible = true;
                lblMsg.Visible = false;
                RequiredNewPwd.Visible = false;
                RequiredCnfrmPwd.Visible = false;
            }
            else
            {
                lblMsg.Text = "Please check your Email or Mobile No !";
                RequiredNewPwd.Visible = false;
                RequiredCnfrmPwd.Visible = false;
            }

            con.Close();
        }

    }
}