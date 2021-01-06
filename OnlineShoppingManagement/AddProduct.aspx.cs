using System;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShoppingManagement
{
    public partial class AddProduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
        SqlDataReader dr;
        SqlDataAdapter da;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                con.Open();
                cmd = new SqlCommand("select * from Category_Details Order by CategoryName", con);
                dr = cmd.ExecuteReader();

               // dr.Read();
                if (dr.HasRows)
                {
                    ddlCategory.DataSource = dr;
                    ddlCategory.DataValueField = "Category_Id";
                    ddlCategory.DataTextField = "CategoryName";
                    ddlCategory.DataBind();

                    ddlCategory.Items.Insert(0, "Select Category");
                }
                con.Close();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
          
            if (FupImage.HasFile)
            {
                    string ProductImageURLPath = "~/ProductImages/" + FupImage.FileName;
                     FupImage.SaveAs(Server.MapPath(ProductImageURLPath));

                        da = new SqlDataAdapter("insert into Product_Details(ProductName,SubName,ProductPrice,ProductDescription,ProductImageURL,ProductCategory,Seller_Id) values('" + txtProductName.Text + "','"+txtSubName.Text+"','" + txtProductPrice.Text + "','" + txtProductDescription.Text + "','" + ProductImageURLPath + "','" + ddlCategory.SelectedItem + "','" + Session["SID"].ToString() + "')", con);
                        dt = new DataTable();
                        da.Fill(dt);
                        lblMsg.Text = "Product added Successfully !";
                    
                
            }
            else
            {
                lblMsg.Text = "Please Select your file";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }


    }
}