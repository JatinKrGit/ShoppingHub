using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace OnlineShoppingManagement
{
    public partial class Cart : System.Web.UI.Page
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

                  Response.Redirect("Login.aspx?C=Cart");
            }
        
        }

        private void ItemBind()
        {
              con.Open();
              cmd = new SqlCommand("Select  Cart_ID,Product_Id,ProdutctName,ProductPrice,ImgURL,SellerName from Cart_Details where User_ID= '" + Session["UID"].ToString() + "'", con);
              dr = cmd.ExecuteReader();

              if (dr.HasRows == true)
              {
                 
                  AddToCart.DataSource = dr;
                  AddToCart.DataBind();
              }

              
              con.Close();
        }

        protected void AddToCart_ItemCommand(object source, DataListCommandEventArgs e)
        {
            con.Open();

            if (e.CommandName == "Delete")
            {


                Label lblCartID = e.Item.FindControl("lblCid") as Label;
                string cid = lblCartID.Text;
                cmd = new SqlCommand("delete from Cart_Details where Cart_ID='" + cid + "'", con);
                cmd.ExecuteNonQuery();
            }
            else if (e.CommandName == "ProductName")
            {
                Label lblPriceId = e.Item.FindControl("lblPID") as Label;
                string Product_Id = lblPriceId.Text;

                Response.Redirect("ViewProductdetails.aspx?PID=" + Product_Id + "");
            }

            con.Close();


            ItemBind();
        }
    }
}