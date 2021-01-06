using System;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShoppingManagement
{
    public partial class EditProfile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                Profile();
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("update Registration_Details set Name='"+txtName.Text+"', MobileNo="+txtMobile.Text+", Gender='"+rbtnGender.SelectedValue+"' where EmailId='"+Session["UID"].ToString()+"' ", con);
            cmd.ExecuteNonQuery();
            Response.Redirect("Profile.aspx");
            con.Close();

            Profile();

        }

        protected void lbtnChangePwd_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
        }

        public void Profile()
        {
            con.Open();
            cmd = new SqlCommand("select * from Registration_Details where EmailId = '" + Session["UID"].ToString() + "'", con);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows == true)
            {
                lblEmail.Text = dr["EmailId"].ToString();
                txtName.Text = dr["Name"].ToString();
                txtMobile.Text = dr["MobileNo"].ToString();
                rbtnGender.SelectedValue = dr["Gender"].ToString();
            }
            con.Close();
        }
    }
}