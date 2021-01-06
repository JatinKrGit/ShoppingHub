using System;


namespace OnlineShoppingManagement
{
    public partial class ContactUs : System.Web.UI.Page
    {

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Request.QueryString["UT"] == "V")
                this.MasterPageFile = "Main.master";

            else if (Request.QueryString["UT"] == "C")
                this.MasterPageFile = "Customer.master";

            else if (Request.QueryString["UT"] == "S")
                this.MasterPageFile = "Seller.master";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["UT"] == "S")
                SellerFeed.Visible = false;
        }
    }
}