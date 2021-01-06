using System;


namespace OnlineShoppingManagement
{
    public partial class Help : System.Web.UI.Page
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

        protected void lbtnContactUs_Click(object sender, EventArgs e)
        {
           
            if (Request.QueryString["UT"] == "V")
                Response.Redirect("ContactUs.aspx?UT=V");
        
            else if (Request.QueryString["UT"] == "C")
                Response.Redirect("ContactUs.aspx?UT=C");

            else if (Request.QueryString["UT"] == "S")
                Response.Redirect("ContactUs.aspx?UT=S");
        
            
        }
    }
}