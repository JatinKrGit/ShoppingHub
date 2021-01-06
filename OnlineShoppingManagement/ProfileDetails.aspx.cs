using System;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShoppingManagement
{
    public partial class ProfileDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Request.QueryString["UT"] == "A")
                this.MasterPageFile = "Admin.master";
            else if (Request.QueryString["UT"] == "S")
                this.MasterPageFile = "Seller.master";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                if (Request.QueryString["UT"] == "A")
                {
                    lblGSTNo.Visible = false;
                    lblGST.Visible = false;

                    AdminProfileDetails();
                    
                }
                else if (Request.QueryString["UT"] == "S")
                {
                    SellerProfileDetails();
                }
            }
        }

     

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            lblName.Visible = false;
            lblMobile.Visible = false;

            txtName.Visible = true;
            txtMobile.Visible = true;
            
            btnEdit.Visible = false;
            btnBack.Visible = true;
            btnUpdate.Visible = true;
            lbtnChangePwd.Visible = true;
            
            if (Request.QueryString["UT"] == "S")
                lbtnDeactivate.Visible = true;
           
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            lblName.Visible = true;
            lblMobile.Visible = true;

            txtName.Visible = false;
            txtMobile.Visible = false;

            btnEdit.Visible = true;
            btnBack.Visible = false;
            btnUpdate.Visible = false;
            lbtnChangePwd.Visible = false;
            lbtnDeactivate.Visible = false;         
            
        }

       
        protected void lbtnDeactivate_Click(object sender, EventArgs e)
        {

            con.Open();

            cmd = new SqlCommand("Delete from Seller_Details where EmailId='" + Session["SID"].ToString() + "'; Delete from Login_Details where LoginID='" + Session["SID"].ToString() + "';Delete from Product_Details where Seller_Id='" + Session["SID"].ToString() + "'", con);
            cmd.ExecuteNonQuery();

            Response.Redirect("Login.aspx");

            con.Close();
        }
       
        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            if (Request.QueryString["UT"] == "A")
            {
                con.Open();
                cmd = new SqlCommand("update Registration_Details set Name='" + txtName.Text + "', MobileNo=" + txtMobile.Text + "  where EmailId='" + Session["UID"].ToString() + "' ", con);
                dr = cmd.ExecuteReader();
                con.Close();

                AdminProfileDetails();
            }

            else if (Request.QueryString["UT"] == "S")
            {
                con.Open();
                cmd = new SqlCommand("update Seller_Details set Name='" + txtName.Text + "', MobileNo='" + txtMobile.Text + "'  where EmailId='" + Session["SID"].ToString() + "' ", con);
                dr = cmd.ExecuteReader();
                con.Close();

                SellerProfileDetails();
            }
    
                lblName.Visible = true;
                lblMobile.Visible = true;

                txtName.Visible = false;
                txtMobile.Visible = false;

                btnEdit.Visible = true;
                btnBack.Visible = false;
                btnUpdate.Visible = false;
                lbtnChangePwd.Visible = false;
                //lbtnDeactivate.Visible = false;
            
            
        }

        protected void lbtnChangePwd_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["UT"] == "A")
            {
                Response.Redirect("ChangePwd.aspx?UT=A");
            }
            else if (Request.QueryString["UT"] == "S")
            {
                Response.Redirect("ChangePwd.aspx?UT=S");
            }

        }

        private void SellerProfileDetails()
        {
            con.Open();
            cmd = new SqlCommand("select * from Seller_Details where EmailId = '" + Session["SID"].ToString() + "'", con);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows == true)
            {
                lblEmail.Text = dr["EmailId"].ToString();
                lblName.Text = dr["Name"].ToString();
                lblMobile.Text = dr["MobileNo"].ToString();
                lblGST.Text = dr["GSTNO"].ToString();
                lblGender.Text = dr["Gender"].ToString();


                txtMobile.Text = dr["MobileNo"].ToString();
                txtName.Text = dr["Name"].ToString();
            }

            con.Close();
        }

        private void AdminProfileDetails()
        {
            con.Open();
            cmd = new SqlCommand("select * from Registration_Details where EmailId = '" + Session["UID"].ToString() + "'", con);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows == true)
            {
                lblEmail.Text = dr["EmailId"].ToString();
                lblName.Text = dr["Name"].ToString();
                lblGender.Text = dr["Gender"].ToString();
                lblMobile.Text = dr["MobileNo"].ToString();

                txtMobile.Text = dr["MobileNo"].ToString();
                txtName.Text = dr["Name"].ToString();
            }

            con.Close();
        }
    }
}