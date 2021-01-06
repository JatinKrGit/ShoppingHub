<%@ Page Title="Shopping Cart" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="OnlineShoppingManagement.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            height: 623px;
        }
        .auto-style11 {
            width: 100%;
            height: 157px;
        }
        .auto-style12 {
            width: 417px;
        }
        .auto-style13 {
            width: 100%;
        }
        .auto-style16 {
            width: 100%;
            font-size: small;
        }
        .auto-style17 {
            width: 660px;
            font-size: small;
        }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td style="vertical-align: top">
                <br />
                <asp:DataList ID="AddToCart" runat="server" OnItemCommand="AddToCart_ItemCommand">
                    <ItemTemplate>
                         <div class="login" style="border: 1px solid #ccc; width: 813px;">
                        <table class="auto-style11">
                    <tr>
                        <td class="auto-style12" style="vertical-align: middle; text-align: center">
                            <br />
                            <asp:Image ID="Image1" runat="server" Height="137px" Width="74px" ImageURL='<%# Bind("ImgURL") %>' />
                            <br />
                            <asp:Label ID="lblCid" runat="server" Visible="False" Text='<%# Bind("Cart_ID") %>'></asp:Label>
                            <br />
                            <asp:Label ID="lblPID" runat="server" Visible="False" Text='<%# Bind("Product_Id") %>'></asp:Label>
                        </td>
                        <td style="vertical-align: top">
                            <br />
                          &nbsp;<asp:LinkButton ID="lbtnPName" runat="server" style="font-weight: 700; font-size: large; text-decoration:none; color:black" Text='<%# Bind("ProdutctName") %>' CommandName="ProductName"></asp:LinkButton>
                            <br />
                            <br />
                          &nbsp;<asp:Label ID="lblPrice" runat="server" Text='<%# Bind("ProductPrice") %>'></asp:Label>
                            <br />
                            <br />
                            <span class="auto-style17">&nbsp; Sold By</span><span class="auto-style16"> </span> <strong><span class="auto-style16">: </span> </strong>
                <asp:Label ID="lblSName" runat="server" CssClass="auto-style16" Text='<%# Bind("SellerName") %>' ></asp:Label>
                            <br />
                            <br />
                           &nbsp;<asp:LinkButton ID="lbtnDelete" runat="server" style="font-size: small" Font-Underline="false" CommandName="Delete">Delete</asp:LinkButton>
                       </td>
                    </tr>
                </table>

                         </div>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                 <br />
                         
                
                <table class="auto-style13">
                    <tr>
                        <td style="text-align: right; vertical-align: middle">
                            <asp:Button ID="btnPlaceOrder" runat="server" Text="PLACE ORDER" style="text-align: right" />
                        </td>
                    </tr>
                </table>

                
                </td>
            </tr>
        </table>
    </asp:Content>
