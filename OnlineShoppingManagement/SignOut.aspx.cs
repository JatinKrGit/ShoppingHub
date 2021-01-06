using System;

namespace OnlineShoppingManagement
{
    public partial class SignOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("CustomerHome.aspx?UT=V");
        }
    }
}