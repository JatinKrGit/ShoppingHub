using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace OnlineShoppingManagement
{
    public partial class WomenProducts : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Request.QueryString["UT"] == "V")
                this.MasterPageFile = "Main.master";
            else if (Request.QueryString["UT"] == "C")
                this.MasterPageFile = "Customer.master";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

            cmd = new SqlCommand("select * from  Product_Details where ProductCategory = 'Women'", con);
            dr = cmd.ExecuteReader();

            //dr.Read();
            if (dr.HasRows)
            {
                dlProductList.DataSource = dr;
                dlProductList.DataBind();
            }

            con.Close();
        }

        protected void dlProductList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Price")
            {
                Label lblPriceId = e.Item.FindControl("lblPid") as Label;
                string Product_Id = lblPriceId.Text;

                if (Session["UN"] == null)
                {
                    Response.Redirect("ViewProductdetails.aspx?PID=" + Product_Id + "&UT=V");
                }
                else
                    Response.Redirect("ViewProductdetails.aspx?PID=" + Product_Id + "&UT=C");


            }
        }
    }
}