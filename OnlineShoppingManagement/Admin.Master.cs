using System;

namespace OnlineShoppingManagement
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                lblName.Text = Session["UN"].ToString();
            
        }
    }
}

