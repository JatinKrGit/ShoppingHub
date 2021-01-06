using System;


namespace OnlineShoppingManagement
{
    public partial class AboutUs : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Request.QueryString["UT"] == "A")
                this.MasterPageFile = "Admin.master";
            else if (Request.QueryString["UT"] == "C")
                this.MasterPageFile = "Customer.master";
            else if (Request.QueryString["UT"] == "S")
                this.MasterPageFile = "Seller.Master";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}