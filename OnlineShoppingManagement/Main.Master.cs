using System;


namespace OnlineShoppingManagement
{
    public partial class Main : System.Web.UI.MasterPage
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSearch_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx?PName=" + txtSearch.Text + "&UT=V");
        }

       
    }
}