using System;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShoppingManagement
{
    public partial class SellerRegistration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            txtName.Focus();
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            con.Open();

            cmd = new SqlCommand("insert into Seller_Details(Name,MobileNo,Gender,EmailId,GSTNO) values ('" + txtName.Text + "','" + txtMobileNo.Text + "','"+rbtnGender.SelectedValue+"','" + txtEmail.Text + "','" + txtGST.Text + "');insert into Login_Details(LoginID,Password,UserType,UserStatus) values ('" + txtEmail.Text + "','" + txtPwd.Text + "','Seller','Activate')", con);
            cmd.ExecuteNonQuery();

            Session["SN"] = txtName.Text;
            Session["SID"] = txtEmail.Text;

            Response.Redirect("SellerHome.aspx");
         
            con.Close();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("select UserType,UserStatus,Name =  CASE WHEN charindex(' ', Name) > 0	THEN  LEFT(Name, charindex(' ', Name)-1) ELSE Name END from Login_Details INNER JOIN Seller_Details ON Login_Details.LoginId =Seller_Details.EmailId where (LoginID = '" + txtLEmail.Text + "') or (MobileNo = '" + txtLEmail.Text + "') AND Password = '" + txtLPass.Text + "'", con);
            dr = cmd.ExecuteReader();

            dr.Read();
            if (dr.HasRows == true)
            {
                Session["SN"] = dr["Name"].ToString();
                Session["SID"] = txtLEmail.Text;
                Session["UT"] = dr["UserType"].ToString();
                
                if (dr["UserStatus"].ToString() == "Activate")
                    Response.Redirect("SellerHome.aspx");

                else
                      
                       lblMessage.Text = "Your Account has been blocked ";

            }
            else

                lblMessage.Text = "Please enter a valid LoginID or Password !";


            con.Close();
        }

        protected void lbtnFgtPwd_Click(object sender, EventArgs e)
        {
            Response.Redirect("ResetPassword.aspx?UT=SPWD");
        }
    }
}