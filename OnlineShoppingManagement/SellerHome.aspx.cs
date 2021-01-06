using System;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShoppingManagement
{
    public partial class SellerHome : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

            cmd = new SqlCommand("select count (*) from Product_Details where Seller_Id='"+Session["SID"].ToString()+"'", con);
            dr = cmd.ExecuteReader();

            dr.Read();
            if (dr.HasRows)
            {
                lblProduct.Text = dr[0].ToString();
            }

            con.Close();

            con.Open();

            cmd = new SqlCommand("select count (*) from Order_Details where Seller_Id='" + Session["SID"].ToString() + "'", con);
            dr = cmd.ExecuteReader();

            dr.Read();
            if (dr.HasRows)
            {
                lblOrder.Text  = dr[0].ToString();
            }

            con.Close();
        }
    }
}