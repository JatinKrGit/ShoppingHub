using System;


namespace OnlineShoppingManagement
{
    public partial class Selling : System.Web.UI.Page
    {

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Request.QueryString["UT"] == "V")
                this.MasterPageFile = "Main.master";
            else if (Request.QueryString["UT"] == "C")
                this.MasterPageFile = "Customer.master";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSell_Click(object sender, EventArgs e)
        {
            Response.Redirect("SellerRegistration.aspx");
        }
    }
}