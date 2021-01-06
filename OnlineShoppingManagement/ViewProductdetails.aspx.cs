using System;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShoppingManagement
{
    public partial class ViewProductdetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
        SqlDataReader dr;
        string PID;

        protected void Page_PreInit(object sender, EventArgs e)
        {
              if (Request.QueryString["UT"] == "V")
                  this.MasterPageFile = "Main.master";
                   
              else if (Request.QueryString["UT"] == "C")
                   this.MasterPageFile = "Customer.master";
       }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["UT"] == "V")
                btnCart.Visible = false;
            

            PID = Request.QueryString["pid"];
            con.Open();

            cmd = new SqlCommand("select * from Product_Details INNER JOIN Seller_Details ON Product_Details.Seller_Id =Seller_Details.EmailId  where Product_Id='" + PID + "'", con);
            dr = cmd.ExecuteReader();

            dr.Read();
            if (dr.HasRows)
            {
                imgurl.ImageUrl = dr["ProductImageURL"].ToString();
                lblPId.Text = dr["Product_Id"].ToString();
                lblPName.Text = dr["ProductName"].ToString();
                lblSubName.Text = dr["SubName"].ToString();
                lblPPrice.Text = dr["ProductPrice"].ToString();
                lblPdescription.Text = dr["ProductDescription"].ToString();
                lblSName.Text = dr["Name"].ToString();
                Session["SID"] = dr["EmailId"].ToString();
            }
            con.Close();
        }

        protected void btnCart_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into Cart_Details (Product_Id,SellerName,ProdutctName,ProductPrice,ImgURL,User_ID) values ('" + lblPId.Text + "','"+ lblSName.Text +"','" + lblPName.Text + "','" + lblPPrice.Text + "','" + imgurl.ImageUrl + "','" + Session["UID"].ToString() + "')", con);
            int x = cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("Cart.aspx");
        }

        protected void btnBuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx?PID=" + lblPId.Text + "");
       
        }
    }
}