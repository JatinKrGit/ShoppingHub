using System;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShoppingManagement
{
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            txtName.Focus();
        }


        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            con.Open();

            cmd = new SqlCommand("insert into Registration_Details(Name,MobileNo,EmailId,Gender) values ('" + txtName.Text + "','" + txtMobileNo.Text + "','" + txtEmail.Text + "','" + rbtGender.SelectedValue + "');insert into Login_Details(LoginID,Password,UserType,UserStatus) values ('" + txtEmail.Text + "','" + txtPwd.Text + "','Customer','Activate')", con);
            cmd.ExecuteNonQuery();
                
            Session["UN"] = txtName.Text;
            Session["UID"] = txtEmail.Text;

            Response.Redirect("CustomerHome.aspx");
            

            con.Close();
        }
    }
}