<%@ Page Title="Your Order" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="OnlineShoppingManagement.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            height: 477px;
        }
        .auto-style11 {
            font-size: x-large;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style15 {
            width: 494px;
        }
        .auto-style17 {
            width: 188px;
        }
        .auto-style18 {
            width: 205px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td style="vertical-align: top; text-align: center;">
                <div class="auto-style13">
                <br />
                <strong><span class="auto-style11">Your Order</span></strong><br />
                <br />
                </div>
                <br />
                <asp:DataList ID="dataOrderList" runat="server"  Width="60%" OnItemCommand="DataList1_ItemCommand" >
                    <ItemTemplate>
                        <div class="Order" style="border: 1px solid #ccc; width: 100%;">
                            <table  style="width: 100%">
                                <tr>
                                    <td>
                                        <table >
                    <tr>
                        <td  style="text-align: center" class="auto-style18">
                            <asp:Image ID="imgProduct" runat="server" Height="103px" Width="60px"  ImageURL='<%# Bind("ProductImageURL") %>' style="text-align: center"/>
                            <br />
                        </td>
                        <td style="vertical-align: top" class="auto-style15">
                             <asp:LinkButton ID="lbtnProductName" runat="server" Text='<%# Bind("ProductName") %>' ForeColor="Black"  CommandName="Name" Font-Underline="False"></asp:LinkButton>
                            <br />
                             <asp:Label ID="lblProductID" runat="server" Text='<%# Bind("Product_Id") %>' Visible="false"></asp:Label>
                            <br />
                            <asp:Label ID="lblPPrice" runat="server" Text='<%# Bind("ProductPrice") %>'></asp:Label>
                            <br />
                            <br />
                            <span >Sold By</span><strong>:</strong><asp:Label ID="lblSName" runat="server" Text='<%# Bind("Name") %>' style="font-size: small"></asp:Label>
                             <br />
                             <asp:Label ID="lblSID" runat="server" style="font-size: small" Text='<%# Bind("Seller_Id") %>' Visible="False" ></asp:Label>
                        </td>
                        <td style="vertical-align: top" class="auto-style17">
                            <asp:Label ID="lblOrderStatus" runat="server" Text='<%# Bind("Order_Status") %>'></asp:Label>
                            <br />
                            <br />
                            <br />
                            <br />
                            <asp:LinkButton ID="lbtnCancleOrder" runat="server" style="text-decoration:none" CommandName="Cancle">Cancle Order</asp:LinkButton>
                            <br />
                            <asp:Label ID="lblOrderID" runat="server" Text='<%# Bind("Order_Id") %>' Visible="false"></asp:Label>
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
                <br />
               
            </td>
        </tr>
    </table>
</asp:Content>
