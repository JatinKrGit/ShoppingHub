using System;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShoppingManagement
{
    public partial class AddAddress : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-M3D4GI1; Integrated Security=True; Initial Catalog=OnlineShoppingManagement");
        SqlCommand cmd;
        SqlDataReader dr;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                if (Request.QueryString["AID"] == "AddressId" )
                {
                    con.Open();

                    cmd = new SqlCommand("select * from Address_Details  where id='" + Session["Aid"].ToString() + "'", con);
                    dr = cmd.ExecuteReader();

                    btnSaveAdd.Text = "Save Change";

                    dr.Read();
                    if (dr.HasRows == true)
                    {
                        txtName.Text = dr["Name"].ToString();
                        txtMobile.Text = dr["MobileNo"].ToString();
                        txtPin.Text = dr["Pincode"].ToString();
                        txtStrretAdd.Text = dr["StreetAdd"].ToString();
                        txtLocal.Text = dr["Locality"].ToString();
                        txtLandmark.Text = dr["Landmark"].ToString();
                        txtAlternateNo.Text = dr["AlternateNo"].ToString();
                        rbtAddType.SelectedValue = dr["AddType"].ToString();

                    }
                    con.Close();

                    StateBind();

                }
                else

                    StateBind();               
             }           
        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("select * from City_Master where State_Id ='" + ddlState.SelectedValue + "' order by CityName ", con);
            dr = cmd.ExecuteReader();

            if (dr.HasRows == true)
            {
                ddlCity.DataSource = dr;
                ddlCity.DataValueField = "City_Id";
                ddlCity.DataTextField = "CityName";
                ddlCity.DataBind();

                ddlCity.Items.Insert(0, "Select City");
            }
            con.Close();
        }


        protected void btnSaveAdd_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["AID"] == "AddressId")
                EditAddress();
            
            else
                AddNewAddress();
                
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["AA"] == "AddAddress")
                Response.Redirect("Addresses.aspx");

            else if (Request.QueryString["AAP"] == "Payment")
                Response.Redirect("Payment.aspx");

            else
                Response.Redirect("Addresses.aspx");
        }


        private void StateBind()
        {
            con.Open();
            cmd = new SqlCommand("select * from State_Master order by StateName", con);
            dr = cmd.ExecuteReader();

            dr.Read();
            if (dr.HasRows == true)
            {
                ddlState.DataSource = dr;
                ddlState.DataValueField = "State_Id";
                ddlState.DataTextField = "StateName";
                ddlState.DataBind();

                ddlState.Items.Insert(0, "Select State");
            }
            con.Close();
        }

        private void AddNewAddress()
        {

            con.Open();
            cmd = new SqlCommand("insert into Address_Details(Name,MobileNo,Pincode,StreetAdd,Locality,State,City,Landmark,AlternateNo,AddType,LoginID) values ('" + txtName.Text + "','" + txtMobile.Text + "','" + txtPin.Text + "','" + txtStrretAdd.Text + "','" + txtLocal.Text + "','" + ddlState.SelectedValue + "','" + ddlCity.SelectedValue + "','" + txtLandmark.Text + "','" + txtAlternateNo.Text + "','" + rbtAddType.SelectedValue + "','" + Session["UID"].ToString() + "')", con);
            cmd.ExecuteNonQuery();

            if (Request.QueryString["AA"] == "AddAddress")
                Response.Redirect("Addresses.aspx");

            else if (Request.QueryString["AAP"] == "Payment")
                Response.Redirect("Payment.aspx");


            con.Close();
        }

        private void EditAddress()
        {

            con.Open();
            cmd = new SqlCommand("Update Address_Details set Name='" + txtName.Text + "',MobileNo='" + txtMobile.Text + "',Pincode='" + txtPin.Text + "',StreetAdd='" + txtStrretAdd.Text + "',Locality='" + txtLocal.Text + "',State='" + ddlState.SelectedValue + "',City='" + ddlCity.SelectedValue + "',Landmark='" + txtLandmark.Text + "',AlternateNo='" + txtAlternateNo.Text + "',AddType='" + rbtAddType.SelectedValue + "' where Id='" + Session["Aid"].ToString() + "' ", con);
            cmd.ExecuteNonQuery();


            Response.Redirect("Addresses.aspx");


            con.Close();
        }
     
    }
}