using System;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShoppingManagement
{
    public partial class Profile1 : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            
                lblMessage.Text = Session["UN"].ToString();
         
        }

        protected void lbtnDeactivate_Click(object sender, EventArgs e)
        {
            con.Open();

            cmd = new SqlCommand("Delete from Registration_Details where EmailId='" + Session["UID"].ToString() + "'; Delete from Login_Details where LoginID='" + Session["UID"].ToString() + "'", con);
            cmd.ExecuteNonQuery();

            Response.Redirect("Login.aspx");

            con.Close();
        }
    }
}