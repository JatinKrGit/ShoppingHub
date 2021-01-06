using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace OnlineShoppingManagement
{
    public partial class AddCategory : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
        DataTable dt;
        SqlDataAdapter da;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                ItemBind();
            }
        }

        protected void btnCategory_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into Category_Details(CategoryName) values ('"+txtCategory.Text+"')", con);

            int x = cmd.ExecuteNonQuery();

            ItemBind();

            con.Close();
        }

        private void ItemBind()
        {
            da = new SqlDataAdapter("select * from Category_Details Order by CategoryName", con);
            dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                grvList.DataSource = dt;
                grvList.DataBind();
            }
        }

        protected void grvList_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            Label lblCId = (Label)grvList.Rows[e.RowIndex].FindControl("lblCategoryId");

            con.Open();
            cmd = new SqlCommand("Delete from Category_Details where Category_Id='"+lblCId.Text+"'", con);
            cmd.ExecuteNonQuery();
            con.Close();

                grvList.EditIndex = -1;
                ItemBind();
        }
    }
}