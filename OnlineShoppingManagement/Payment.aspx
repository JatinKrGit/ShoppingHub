<%@ Page Title="Make Payment" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="OnlineShoppingManagement.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            height: 332px;
        }
        .auto-style11 {
            font-size: x-large;
            text-align: left;
        }
        .auto-style12 {
            width: 245px;
            font-size: medium;
        }
        .auto-style14 {
            width: 100%;
            height: 121px;
        }
        .auto-style15 {
            width: 190px;
        }
        .auto-style16 {
            width: 439px;
        }
        </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <table class="auto-style10" >
        <tr>
            <td class="auto-style11" style="vertical-align: top"><strong>Select Delivery Address</strong><br />
                <asp:LinkButton ID="lbtnAddAddress" runat="server" OnClick="lbtnAddAddress_Click" Font-Overline="False" style="font-size: medium">+ Add New Address</asp:LinkButton>
                <br />
                <asp:DataList ID="dataListAddress" runat="server" RepeatColumns="2" RepeatDirection="Horizontal" style="font-size: medium" Width="1278px" OnItemCommand="dataListAddress_ItemCommand">
                    <ItemTemplate>
                        <div class="login" style="border: 1px solid #ccc; width: 42%;">
                            <table>
                                <tr>
                                    <td>
                                        <table style="width: 101%">
                                            <tr>
                                                <td class="auto-style12">
                                                    <asp:Label ID="lblName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                                    <asp:Label ID="lblid" runat="server" Text='<%# Bind("id") %>' Visible="false"></asp:Label>
                                                    <br />
                                                    <br />
                                                    <asp:Label ID="lblStreetAdd" runat="server" Text='<%# Bind("StreetAdd") %>'></asp:Label>
                                                    <br />
                                                    <asp:Label ID="lblCity" runat="server" Text='<%# Bind("CityName") %>'></asp:Label>
                                                    &nbsp;<asp:Label ID="lblState" runat="server" Text='<%# Bind("StateName") %>'></asp:Label>
                                                    &nbsp;<asp:Label ID="lblPin" runat="server" Text='<%# Bind("Pincode") %>'></asp:Label>
                                                    <br />
                                                    <br />
                                                    Phone Number:&nbsp;
                            <asp:Label ID="lblMNo" runat="server" Text='<%# Bind("ContactNo") %>'></asp:Label>
                                                    <br />
                                                    <br />
                                                    <asp:LinkButton ID="lbtnSelect" runat="server" Font-Underline="True" CommandName="select">Select</asp:LinkButton>
                                                </td>
                                                <td style="vertical-align: top; font-size: medium;">
                                                    <asp:Label ID="lblAddType" runat="server" Text='<%# Bind("AddType") %>'></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                
            </td>
        </tr>
    </table>
    <br />
    <div runat="server" id="PaymentMode" visible="false"> 
    <asp:Label ID="lblSelect" runat="server" Text="Select Payment Mode" Font-Bold="True" Font-Size="X-Large"></asp:Label>
    <br />
    <br />
&nbsp;<asp:DropDownList ID="ddlPayMode" runat="server"  OnSelectedIndexChanged="ddlPayMode_SelectedIndexChanged" AutoPostBack="True">

    </asp:DropDownList>
    <br />
    <div runat="server" id="AddCard" visible="false">
   <asp:LinkButton ID="lbtnAddCard" runat="server"  Font-Overline="False" style="font-size: medium" OnClick="lbtnAddCard_Click">+ Add New Card</asp:LinkButton></div><br />
    <asp:DataList ID="dataListCards" runat="server" RepeatColumns="2" RepeatDirection="Horizontal" Visible="False" Width="1260px" OnItemCommand="dataListCards_ItemCommand">
        <ItemTemplate>
                        <div class="login" style="border: 1px solid #ccc; width: 50%;">
                        <table>
                            <tr>
                                <td class="auto-style16">

                                    <table style="width: 110%; height: 130px">
                    <tr>
                        <td style="vertical-align: top; " class="auto-style15">
                            <asp:Label ID="lblCard" runat="server" Font-Bold="True" Font-Size="Large" Text="Card No"></asp:Label>
                            <br />
<asp:Label ID="lblCardNo" runat="server" Text='<%# Bind("CardNumber") %>'></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="lblCName" runat="server" Font-Bold="True" Font-Size="Large" Text="Name on card"></asp:Label>
                            <br />&nbsp;<asp:Label ID="lblName" runat="server" Text='<%# Bind("NameOnCard") %>'></asp:Label>
                            <br />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtCvv" runat="server" Height="16px" Width="44px" placeholder="CVV*" Visible="false" TextMode="Password" MaxLength="3" ToolTip="Enter Your CVV"></asp:TextBox>
                            <br />
                            <br />
                            <asp:LinkButton ID="lbtnSelect" runat="server" CommandName="Select">Select</asp:LinkButton>

                        </td>
                        <td style="vertical-align: top">
                            <asp:Label ID="lblExDate" runat="server" Font-Bold="True" Font-Size="Large" Text="Expiry Date"></asp:Label>
                            <br />
                            <asp:Label ID="lblDate" runat="server" Text='<%# Bind("ExpiryDate") %>'></asp:Label>
                            <br />
                            <asp:Label ID="lblCid" runat="server" Text='<%# Bind("C_id") %>' Visible="False"></asp:Label>
                            </td>
                    </tr>
                </table>
                                </td>
                            </tr>
                        </table>
                            </div>
                    </ItemTemplate>
    </asp:DataList></div>
    
    <table class="auto-style14">
        <tr>
            <td style="text-align: center" >
                <asp:Button ID="btnPayCard" runat="server" Text="Place Order" Visible="False" BackColor="#FF6600" BorderColor="#FF6600" BorderStyle="None" ForeColor="White" OnClick="btnPayCard_Click"   Height="26px" Width="103px"/>
            &nbsp;<asp:Button ID="btnPayDelivery" runat="server" Text="Place Order" Visible="False" BackColor="#FF6600" BorderColor="#FF6600" BorderStyle="None" ForeColor="White" OnClick="btnPayDelivery_Click" Height="26px" Width="103px" />
            &nbsp;</td>
        </tr>
        <asp:Label ID="lblPID" runat="server" Visible="False" ></asp:Label>
    </table>
    </asp:Content>
