using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace OnlineShoppingManagement
{
    public partial class CustomerHome : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        //string constr = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
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
            if (Page.IsPostBack == false)
            {
                con.Open();
                cmd = new SqlCommand("select * from  Product_Details", con);
                dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    dlProductList.DataSource = dr;
                    dlProductList.DataBind();
                }

                con.Close();
            }
        }

        protected void DataList1_ItemCommand(object source, System.Web.UI.WebControls.DataListCommandEventArgs e)
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
        }

        protected void dlProductList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}