using System;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShoppingManagement
{
    public partial class AdminHome : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {

            lblVisitors.Text = Application["Count"].ToString();

            con.Open();

            cmd = new SqlCommand("select count (*) from Registration_Details", con);
            dr = cmd.ExecuteReader();

            dr.Read();
            if (dr.HasRows)
            {
               lblCustomer.Text = dr[0].ToString();
            }

            con.Close();

            con.Open();

            cmd = new SqlCommand("select count (*) from Seller_Details", con);
            dr = cmd.ExecuteReader();

            dr.Read();
            if (dr.HasRows)
            {
                lblSeller.Text = dr[0].ToString();
            }

            con.Close();
        }
    }
}