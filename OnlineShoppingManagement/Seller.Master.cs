using System;


namespace OnlineShoppingManagement
{
    public partial class Seller : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                lblMessage.Text = Session["SN"].ToString();
        }

    }
}