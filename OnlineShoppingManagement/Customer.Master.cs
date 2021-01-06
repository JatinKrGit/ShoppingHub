using System;
using System.Data;
using System.Data.SqlClient;
namespace OnlineShoppingManagement
{
    public partial class Customer : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UN"] != null)
                lblMessage.Text = Session["UN"].ToString();
            else
            {
                Response.Redirect("Login.aspx");
            }
            
        }
         
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx?PName=" + txtSearch.Text + "&UT=C");
        }
    }
}