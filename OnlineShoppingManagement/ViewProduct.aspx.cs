using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShoppingManagement
{
    public partial class ViewProduct : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        DataTable dt = new DataTable();
        SqlDataAdapter da;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                GridBind();
            }
        }

        private void GridBind()
        {
            da = new SqlDataAdapter("Select * from Product_Details INNER JOIN Category_Details ON Product_Details.ProductCategory =Category_Details.CategoryName where Seller_Id='" + Session["SID"].ToString() + "'", con);
            da.Fill(dt);


            if (dt.Rows.Count > 0)
            {
                grvViewProduct.DataSource = dt;
                grvViewProduct.DataBind();
            }
         

        }

        protected void grvViewProduct_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grvViewProduct.EditIndex = e.NewEditIndex;
            GridBind();
        }

        protected void grvViewProduct_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grvViewProduct.EditIndex = -1;
            GridBind();
        }

        protected void grvViewProduct_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblProductID = (Label)grvViewProduct.Rows[e.RowIndex].FindControl("lblPID");

            
            da = new SqlDataAdapter("Delete from Product_Details where Product_Id='" + lblProductID.Text + "'", con);
            da.Fill(dt);

            grvViewProduct.EditIndex = -1;
            GridBind();
        }

        protected void grvViewProduct_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lblProductId = (Label)grvViewProduct.Rows[e.RowIndex].FindControl("lblPID");
            TextBox txtPName = (TextBox)grvViewProduct.Rows[e.RowIndex].FindControl("txtName");
            TextBox txtSubName = (TextBox)grvViewProduct.Rows[e.RowIndex].FindControl("txtSubName");
            TextBox txtPPrice = (TextBox)grvViewProduct.Rows[e.RowIndex].FindControl("txtPrice");
            TextBox txtPDescription = (TextBox)grvViewProduct.Rows[e.RowIndex].FindControl("txtDescription");
            DropDownList ddlCategory = (DropDownList)grvViewProduct.Rows[e.RowIndex].FindControl("ddlCategory_Edit");
           // TextBox txtPCategory = (TextBox)grvViewProduct.Rows[e.RowIndex].FindControl("txtCategory");
            FileUpload FupImg = (FileUpload)grvViewProduct.Rows[e.RowIndex].FindControl("FupImage");

            con.Open();

            if (FupImg.HasFile)
            {
                string ProductImageURLPath = "~/ProductImages/" + FupImg.FileName;

                FupImg.SaveAs(Server.MapPath(ProductImageURLPath));

                da = new SqlDataAdapter("update Product_Details Set ProductName ='" + txtPName.Text + "',SubName='" + txtSubName.Text + "',ProductPrice='" + txtPPrice.Text + "',ProductDescription='" + txtPDescription.Text + "',ProductImageURL='" + ProductImageURLPath + "',ProductCategory='" + ddlCategory.SelectedItem + "' where Product_Id=" + lblProductId.Text + "", con);
                da.Fill(dt);
            }

            con.Close();

            grvViewProduct.EditIndex = -1;
            GridBind();
        }

        //protected void grvViewProduct_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    Control ddlCategory = e.Row.FindControl("ddlCategory_Edit");

            
        //    da = new SqlDataAdapter("select * from Category_Details", con);
        //    da.Fill(dt);

            
        //    if (dt.Rows.Count > 0)
        //    {
        //        ((DropDownList)ddlCategory).DataSource = dt;
        //        ((DropDownList)ddlCategory).DataValueField = "Category_Id";
        //        ((DropDownList)ddlCategory).DataTextField = "CategoryName";
        //        ((DropDownList)ddlCategory).DataBind();

        //        ((DropDownList)ddlCategory).Items.Insert(0, "Select Category");
        //    }
          
        //}

 
    }
}