<%@ Page Title="Shopping Hub" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="OnlineShoppingManagement.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
        width: 100%;
        height: 310px;
    }
    .auto-style5 {
        font-size: large;
        text-decoration: underline;
    }
    .auto-style8 {
        text-align: left;
            height: 57px;
        }
    .auto-style9 {
        width: 79px;
            height: 57px;
        }
        .auto-style16 {
        font-size: large;
            font-weight: 700;
        }
        .auto-style20 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="height: 493px; width: 1260px;">
    <tr>
        <td style="vertical-align: top; text-align: center">
            <br />
            <strong><span class="auto-style5">STATS</span></strong><br />
            <br />
            <br />
            <br />
            <asp:Label ID="lblNoOfCustomer" runat="server" Text="Number of Customer" Font-Bold="True" Font-Size="X-Large"></asp:Label>
           &nbsp;&nbsp;
           &nbsp; &nbsp;<span class="auto-style20"><strong>:</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblCustomer" runat="server" CssClass="auto-style16" Font-Size="X-Large" ></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="lblNoOfSeller" runat="server" Text="Number Of Seller" Font-Bold="True" Font-Size="X-Large"></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;<span class="auto-style20"><strong>:</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblSeller" runat="server" CssClass="auto-style16" Font-Size="X-Large" ></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="lblNoOfVisitor" runat="server" Text="Number Of Visitors" Font-Bold="True" Font-Size="Large"></asp:Label>
           &nbsp;&nbsp;<span class="auto-style20"><strong>:</strong></span>&nbsp;
            <asp:Label ID="lblVisitors" runat="server" CssClass="auto-style16" ></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
