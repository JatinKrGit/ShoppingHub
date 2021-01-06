using System;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShoppingManagement
{
    public partial class ViewPayment : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                con.Open();
                cmd = new SqlCommand("Select * from Payment_Details where Seller_Id='" + Session["SID"].ToString() + "'", con);
                dr = cmd.ExecuteReader();


                if (dr.HasRows == true)
                {

                    grvPayment.DataSource = dr;
                    grvPayment.DataBind();
                }
                con.Close();
            }
        }
    }
}