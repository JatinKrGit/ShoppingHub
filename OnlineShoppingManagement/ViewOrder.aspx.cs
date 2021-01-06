using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace OnlineShoppingManagement
{
    public partial class ViewOrder : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        DataTable dt;
        SqlDataAdapter da;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                ItemBind();
            }
        }

        private void ItemBind()
        {
            da = new SqlDataAdapter("select * from Order_Details where Seller_Id='"+Session["SID"].ToString()+"'", con);
            dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                grvOrderDetails.DataSource = dt;
                grvOrderDetails.DataBind();
            }
        }
    }
}