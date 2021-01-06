using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;


namespace OnlineShoppingManagement
{
    public partial class SavedCards : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                ItemBind();
            }
        }

        protected void rptSavedCard_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            con.Open();

             if (e.CommandName == "Remove")
             {
                 Label lblCardID = e.Item.FindControl("lblCid") as Label;
                 string Cid = lblCardID.Text;
                 cmd = new SqlCommand("delete from PaymentCard_Details where C_id='" + Cid + "'", con);
                 cmd.ExecuteNonQuery();

                 ItemBind();
                
             }

             con.Close();
        }

        private void ItemBind()
        {
            da = new SqlDataAdapter("select * from PaymentCard_Details  where LoginID='" + Session["UID"].ToString() + "'", con);
            dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count >= 0)
            {
                rptSavedCard.DataSource = dt;
                rptSavedCard.DataBind();

            }
        }
    }
}