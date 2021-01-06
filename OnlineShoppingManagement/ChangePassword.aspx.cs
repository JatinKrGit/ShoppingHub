using System;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShoppingManagement
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }


        protected void btnSave_Click1(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("Update Login_Details set password='" + txtNewPwd.Text + "' where LoginID ='" + Session["UID"].ToString() + "'", con);
            cmd.ExecuteNonQuery();

            Session.Abandon();
            Session.Clear();
            Response.Redirect("Login.aspx");

            con.Close();
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }
       
    }
}