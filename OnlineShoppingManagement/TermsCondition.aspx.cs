using System;


namespace OnlineShoppingManagement
{
    public partial class TermsCondition : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Request.QueryString["UT"] == "C")
                this.MasterPageFile = "Customer.master";

            else if (Request.QueryString["UT"] == "S")
                this.MasterPageFile = "Seller.Master";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}