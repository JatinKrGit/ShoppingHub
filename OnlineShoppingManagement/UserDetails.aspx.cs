using System ;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace OnlineShoppingManagement
{
    public partial class UserDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
        SqlDataReader dr;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                UserListBind();
            }

        }

        protected void ddlUserType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlUserType.SelectedValue == "Customer")
            {
                Customer.Visible = true;
                Seller.Visible = false;
            }
            else if (ddlUserType.SelectedValue == "Seller")
            {
                Seller.Visible = true;
                Customer.Visible = false;
            }
            else if (ddlUserType.SelectedValue == "Select User")
            {
                Seller.Visible = false;
                Customer.Visible = false;
            }
        }



        protected void grvUserDetail_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            grvCustDetail.EditIndex = e.NewEditIndex;
            UserListBind();
        }

        protected void grvUserDetail_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            grvCustDetail.EditIndex = -1;
            UserListBind();
        }

        protected void grvUserDetail_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            Label lblUId = (Label)grvCustDetail.Rows[e.RowIndex].FindControl("lblUID");
            Label lblLoginId = (Label)grvCustDetail.Rows[e.RowIndex].FindControl("lblEmail");
               

            con.Open();
            cmd = new SqlCommand("Delete from Registration_Details where U_Id='" + lblUId.Text + "'; Delete from Login_Details where LoginID='" + lblLoginId.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            grvCustDetail.EditIndex = -1;
            UserListBind();
        }

        protected void grvSellerDetails_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grvSellerDetails.EditIndex = e.NewEditIndex;
            UserListBind();
        }

        protected void grvSellerDetails_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grvSellerDetails.EditIndex = -1;
            UserListBind();
        }

       
        protected void grvSellerDetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblSId = (Label)grvSellerDetails.Rows[e.RowIndex].FindControl("lblSID");
            Label lblLoginId = (Label)grvSellerDetails.Rows[e.RowIndex].FindControl("lblEmail");


            con.Open();
            cmd = new SqlCommand("Delete from Seller_Details where Seller_Id='" + lblSId.Text + "'; Delete from Login_Details where LoginID='" + lblLoginId.Text + "'; Delete from Product_Details where LoginID='" + lblLoginId.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            grvSellerDetails.EditIndex = -1;
            UserListBind();
        }

        protected void grvCustDetail_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ChangeStatus")
            {
                string LID = e.CommandArgument.ToString();

                con.Open();
                cmd = new SqlCommand("Update Login_Details set UserStatus=Case When UserStatus='Activate' Then 'Deactivate' When UserStatus='Deactivate' Then 'Activate' End where LoginID='"+ LID +"'", con);
                cmd.ExecuteNonQuery();
                con.Close();

                UserListBind();

            }
        }

        protected void grvSellerDetails_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ChangeStatus")
            {
                string LID = e.CommandArgument.ToString();

                con.Open();
                cmd = new SqlCommand("Update Login_Details set UserStatus=Case When UserStatus='Activate' Then 'Deactivate' When UserStatus='Deactivate' Then 'Activate' End where LoginID='" + LID + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();

                UserListBind();

            }
        }
        private void UserListBind()
        {
            con.Open();
            cmd = new SqlCommand("Select * from Registration_Details INNER JOIN Login_Details ON Registration_Details.EmailId =Login_Details.LoginId", con);
            dr = cmd.ExecuteReader();


            if (dr.HasRows == true)
            {
                grvCustDetail.DataSource = dr;
                grvCustDetail.DataBind();
            }
            con.Close();

            con.Open();
            cmd = new SqlCommand("Select * from Seller_Details INNER JOIN Login_Details ON Seller_Details.EmailId =Login_Details.LoginId", con);
            dr = cmd.ExecuteReader();


            if (dr.HasRows == true)
            {
                grvSellerDetails.DataSource = dr;
                grvSellerDetails.DataBind();
            }
            con.Close();


        }

    }
}