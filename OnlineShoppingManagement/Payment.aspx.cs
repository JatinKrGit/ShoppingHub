using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace OnlineShoppingManagement
{
    public partial class Payment : System.Web.UI.Page
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
                if (Session["UN"] != null)
                {
                    con.Open();
                    cmd = new SqlCommand("select * from PaymentMode_Details", con);
                    dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        ddlPayMode.DataSource = dr;
                        ddlPayMode.DataValueField = "PaymentMode_Id";
                        ddlPayMode.DataTextField = "PaymentMode";
                        ddlPayMode.DataBind();

                        ddlPayMode.Items.Insert(0, "Select Payment Mode");
                    }
                    con.Close();

                    ItemBind();
                }
                else

                    Response.Redirect("Login.aspx");
            }

           
        }

        protected void dataListAddress_ItemCommand(object source, DataListCommandEventArgs e)
        {
            con.Open();

            if (e.CommandName == "select")
            {
                Label lblAddressID = e.Item.FindControl("lblid") as Label;
                string Aid = lblAddressID.Text;

                Session["AID"] = Aid;
                PaymentMode.Visible = true;
            }
        }

        protected void dataListCards_ItemCommand(object source, DataListCommandEventArgs e)
        {

            if (e.CommandName == "Select")
            {
                Label lblCardID = e.Item.FindControl("lblCid") as Label;
                string Cid = lblCardID.Text;

                TextBox txtCvv = e.Item.FindControl("txtCVV") as TextBox;
                string Cvv = txtCvv.Text;

                Session["CID"] = Cid;
                txtCvv.Visible = true;
                btnPayCard.Visible = true;
            }


        }


        protected void ddlPayMode_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (ddlPayMode.SelectedValue == "Select Payment Mode")
            {
                AddCard.Visible = false;
                dataListCards.Visible = false;
                btnPayCard.Visible = false;
                btnPayDelivery.Visible = false;

            }

            else if (ddlPayMode.SelectedValue == "101") //Debit/Credit Card
            {

                AddCard.Visible = true;
                dataListCards.Visible = true;
                btnPayDelivery.Visible = false;

            }

            else if (ddlPayMode.SelectedValue == "102") //Pay On Delivery
            {

                btnPayDelivery.Visible = true;
                btnPayCard.Visible = false;
                dataListCards.Visible = false;
                AddCard.Visible = false;
            }
        }


        protected void btnPayDelivery_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into Order_Details(Product_Id,Seller_Id,U_Id,Order_Status,DeliveryAddress_Id,DateTime) values (" + Request.QueryString["PID"] + ",'" + Session["SID"].ToString() + "','" + Session["UID"].ToString() + "','Confirm','" + Session["AID"].ToString() + "',GETDATE()); insert into Payment_Details(Product_Id,Seller_Id,U_Id,PaymentType,DateTime) values (" + Request.QueryString["PID"] + ",'" + Session["SID"].ToString() + "','" + Session["UID"].ToString() + "','" + ddlPayMode.SelectedItem + "',GETDATE())", con);
            cmd.ExecuteNonQuery();

            Response.Redirect("Order.aspx");

            con.Close();
        }

        protected void btnPayCard_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into Order_Details(Product_Id,Seller_Id,U_Id,Order_Status,DeliveryAddress_Id,DateTime) values (" + Request.QueryString["PID"] + ",'" + Session["SID"].ToString() + "','" + Session["UID"].ToString() + "','Confirm','" + Session["AID"].ToString() + "',GETDATE()); insert into Payment_Details(Product_Id,CardNo_Id,Seller_Id,U_Id,PaymentType,DateTime) values (" + Request.QueryString["PID"] + ",'" + Session["CID"].ToString() + "','" + Session["SID"].ToString() + "','" + Session["UID"].ToString() + "','" + ddlPayMode.SelectedItem + "',GETDATE())", con);
            cmd.ExecuteNonQuery();

            Response.Redirect("Order.aspx");

            con.Close();
        }

        private void ItemBind()
        {
            da = new SqlDataAdapter("select AddType,Name,id,StreetAdd,CityName,StateName,Pincode, convert(varchar,MobileNo) + ', ' + convert(varchar,AlternateNo) As ContactNo from  Address_Details  INNER JOIN State_Master ON Address_Details.State =State_Master.State_id INNER JOIN City_Master ON Address_Details.City =City_Master.City_id  where LoginID='" + Session["UID"].ToString() + "'", con);
            dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                dataListAddress.DataSource = dt;
                dataListAddress.DataBind();
            }


            da = new SqlDataAdapter("select * from PaymentCard_Details  where LoginID='" + Session["UID"].ToString() + "'", con);
            dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                dataListCards.DataSource = dt;
                dataListCards.DataBind();

            }

        }

        protected void lbtnAddAddress_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddAddress.aspx?AAP=Payment");
        }

        protected void lbtnAddCard_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddPaymentCard.aspx?ACP=Payment");
        }

    }
}