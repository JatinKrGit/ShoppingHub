using System;
using System.Data;
using System.Data.SqlClient;


namespace OnlineShoppingManagement
{
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                con.Open();
                cmd = new SqlCommand("select * from Registration_Details where EmailId = '" + Session["UID"].ToString() + "'", con);
                dr = cmd.ExecuteReader();
                dr.Read();
                if (dr.HasRows == true)
                {
                    lblEmail.Text = dr["EmailId"].ToString();
                    lblName.Text = dr["Name"].ToString();
                    lblGender.Text = dr["Gender"].ToString();
                    lblMobile.Text = dr["MobileNo"].ToString();
                }

                con.Close();
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditProfile.aspx");
        }
    }
}