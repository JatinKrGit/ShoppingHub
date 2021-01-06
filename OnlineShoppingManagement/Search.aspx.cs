using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace OnlineShoppingManagement
{
    public partial class Search : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
        SqlDataReader dr;
        string productName;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Request.QueryString["UT"] == "V")
                this.MasterPageFile = "Main.master";

            else if (Request.QueryString["UT"] == "C")
                this.MasterPageFile = "Customer.master";

        }

        protected void Page_Load(object sender, EventArgs e)
        {

                
                productName =Request.QueryString["PName"];
                con.Open();

                cmd = new SqlCommand("  select * from Product_Details INNER JOIN Seller_Details  ON Product_Details.Seller_Id =Seller_Details.EmailId  where ProductName like '%" + productName + "%'", con);
                dr = cmd.ExecuteReader();

                if (dr.HasRows==true)
                {
                    DatalistSearch.DataSource = dr;
                    DatalistSearch.DataBind();
                }
                con.Close();
           
        }

        protected void DatalistSearch_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Price")
            {
                Label lblPriceId = e.Item.FindControl("lblPid") as Label;
                string Product_Id = lblPriceId.Text;

                if (Session["UN"] != null)
                {
                    Response.Redirect("ViewProductdetails.aspx?PID=" + Product_Id + "&UT=C");
                }
                else
                    Response.Redirect("ViewProductdetails.aspx?PID=" + Product_Id + "&UT=V");
            }

            else if (e.CommandName == "BookNow")
            {
                Label lblPriceId = e.Item.FindControl("lblPid") as Label;
                string Product_Id = lblPriceId.Text;
                Label lblSellerId = e.Item.FindControl("lblSID") as Label;
                Session["SID"] = lblSellerId.Text;


                Response.Redirect("Payment.aspx?PID=" + Product_Id + "");
            }
            
        }

   
    }
}