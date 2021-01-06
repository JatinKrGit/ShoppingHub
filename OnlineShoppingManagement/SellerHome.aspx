<%@ Page Title="Seller Hub" Language="C#" MasterPageFile="~/Seller.Master" AutoEventWireup="true" CodeBehind="SellerHome.aspx.cs" Inherits="OnlineShoppingManagement.SellerHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
            height: 428px;
            font-size: x-large;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style11 {
            width: 656px;
            height: 100px;
            text-align: right;
        }
        .auto-style12 {
            height: 100px;
            text-align: left;
        }
        .auto-style13 {
            width: 41px;
            height: 100px;
        }
        .auto-style16 {
            height: 100px;
            text-align: left;
        }
        .auto-style17 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style8">
        <tr>
            <td style="vertical-align: top; text-align: center;">
                <br />
                <span class="auto-style17">STATS</span><br />
                <br />
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style11">Number Of Products</td>
                        <td class="auto-style13"><strong>:</strong></td>
                        <td class="auto-style12">
                            <asp:Label ID="lblProduct" runat="server" style="text-align: left" ></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">Number Of Orders</td>
                        <td class="auto-style13"><strong>:</strong></td>
                        <td class="auto-style16">
                            <asp:Label ID="lblOrder" runat="server" style="text-align: left" ></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </asp:Content>
