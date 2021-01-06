using System;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShoppingManagement
{
    public partial class Login : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            txtLoginId.Focus();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("select UserType,UserStatus,Name  from Login_Details INNER JOIN Registration_Details ON Login_Details.LoginId =Registration_Details.EmailId where (LoginID = '" + txtLoginId.Text + "') or (MobileNo = '" + txtLoginId.Text + "') AND Password = '" + txtPwd.Text + "'", con);
            dr = cmd.ExecuteReader();

            dr.Read();
            if (dr.HasRows == true)
            {
                Session["UN"] = dr["Name"].ToString();
                Session["UID"] = txtLoginId.Text;

                if (dr["UserType"].ToString() == "Admin")
                    Response.Redirect("AdminHome.aspx");

                else if (dr["UserType"].ToString() == "Customer") 
                {
                    if (dr["UserStatus"].ToString() == "Activate")
                    {

                       if (Request.QueryString["O"] == "Order")
                           Response.Redirect("Order.aspx");

                       else if (Request.QueryString["C"] == "Cart")
                            Response.Redirect("Cart.aspx");

                       else
                          Response.Redirect("CustomerHome.aspx");
                   }
                   else
                      
                       lblMessage.Text = "Your Account has been blocked ";
                }

            }
            else

                lblMessage.Text = "Please enter a valid LoginID or Password !";


            con.Close();
        }

        protected void imgbtnF_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Response.Redirect("https://www.facebook.com/");
        }

        protected void imgbtnG_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Response.Redirect("https://accounts.google.com/signin");
        }
    }
}