using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace OnlineShoppingManagement
{
    public partial class Order : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
        SqlDataReader dr;

       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
              if (Session["UN"] != null)
              {
                 ItemBind();
              }
              else

                  Response.Redirect("Login.aspx?O=Order");
            }           
        }

        private void ItemBind()
        {
            con.Open();

            cmd = new SqlCommand("Select * from Order_Details INNER JOIN Product_Details ON Order_Details.Product_Id =Product_Details.Product_Id INNER JOIN Seller_Details ON  Order_Details.Seller_Id =Seller_Details.EmailId where U_Id= '" + Session["UID"].ToString() + "'", con);
            dr = cmd.ExecuteReader();

            
            if (dr.HasRows)
            {

                dataOrderList.DataSource = dr;
                dataOrderList.DataBind();
            }

            con.Close();

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            con.Open();

            if (e.CommandName == "Name")
            {
                Label lblPriceId = e.Item.FindControl("lblProductID") as Label;
                string Product_Id = lblPriceId.Text;

                Response.Redirect("ViewProductdetails.aspx?PID=" + Product_Id + "");
            }

            else if (e.CommandName == "Cancle")
            {
                Label lblOrderId = e.Item.FindControl("lblOrderID") as Label;
                string OrderID = lblOrderId.Text;

                Label lblProductId = e.Item.FindControl("lblProductID") as Label;
                string ProductID = lblProductId.Text;

                Label lblSellerId = e.Item.FindControl("lblSID") as Label;
                string SellerId = lblSellerId.Text;
                

                cmd = new SqlCommand("update Order_Details set Order_Status='Cancelled' where Order_Id='" + OrderID + "' ; insert into Cancellation_Details(Order_Id,Product_Id,U_Id,Seller_Id,DateTime) values ('" + OrderID + "','" + ProductID + "','" + Session["UID"].ToString() + "','" + lblSellerId.Text + "',GETDATE())", con);
                cmd.ExecuteNonQuery();

            }

            con.Close();

            ItemBind();
        }
    }
}