using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace OnlineShoppingManagement
{
    public partial class Addresses : System.Web.UI.Page
    {
        SqlConnection con= new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlDataAdapter da;
        DataTable dt;
   
         
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (Page.IsPostBack == false)
            {
                ItemBind();
            }

        }

       
        protected void rptAddDetails_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
        {
            con.Open();

            if (e.CommandName == "Remove")
            {
                Label lblAddressID = e.Item.FindControl("lblid") as Label;
                string Aid = lblAddressID.Text;
                da = new SqlDataAdapter("delete from Address_Details where id='" + Aid + "'", con);
                dt = new DataTable();
                da.Fill(dt);


                ItemBind();
            }

            else if (e.CommandName == "Edit")
            {
                 Label lblAddressID = e.Item.FindControl("lblid") as Label;
                 Session["Aid"] = lblAddressID.Text;
                 Response.Redirect("AddAddress.aspx?AID=AddressId");
            }
           
                con.Close();
        }

        private void ItemBind()
        {
            da = new SqlDataAdapter("select AddType,Name,id,StreetAdd,CityName,StateName,Pincode, convert(varchar,MobileNo) + ', ' + convert(varchar,AlternateNo) As ContactNo from  Address_Details  INNER JOIN State_Master ON Address_Details.State =State_Master.State_id INNER JOIN City_Master ON Address_Details.City =City_Master.City_id  where LoginID='" + Session["UID"].ToString() + "'", con);
            dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count >= 0)
            {
                rptAddDetails.DataSource = dt;
                rptAddDetails.DataBind();
            }
            
        }

        protected void lbtnAddAddress_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddAddress.aspx?AA=AddAddress");
        }
    }
}