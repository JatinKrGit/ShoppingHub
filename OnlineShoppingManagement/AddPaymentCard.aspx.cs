using System;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShoppingManagement
{
    public partial class AddPaymentCard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            txtCardNo.Focus();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into PaymentCard_Details(NameOnCard, CardNumber,ExpiryDate,LoginID) values ('" + txtName.Text + "','" + txtCardNo.Text + "','" + txtDate.Text + "','"+Session["UID"].ToString()+"')", con);
            cmd.ExecuteNonQuery();

            if (Request.QueryString["SV"] == "SavedCards")
            Response.Redirect("SavedCards.aspx");

            else if (Request.QueryString["ACP"] == "Payment")
                Response.Redirect("Payment.aspx");


            con.Close();

        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["SV"] == "SavedCards")
                Response.Redirect("SavedCards.aspx");

            else if (Request.QueryString["ACP"] == "Payment")
                Response.Redirect("Payment.aspx");
        }
    }
}