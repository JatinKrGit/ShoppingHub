<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="ViewProductdetails.aspx.cs" Inherits="OnlineShoppingManagement.ViewProductdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            height: 481px;
        }
        .auto-style11 {
            width: 392px;
        }
        .auto-style12 {
            font-size: x-large;
        }
        .auto-style13 {
            font-size: small;
            font-weight: 700;
        }
        .auto-style14 {
            font-size: small;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table class="auto-style10">
        <tr>
            <td class="auto-style11" style="text-align: center">
                <asp:Image ID="imgurl" runat="server" Height="345px" Width="199px" />
                <br />
                <br />
&nbsp;<br />
                <asp:Label ID="lblPId" runat="server" Visible="false" ></asp:Label>
            </td>
            <td style="vertical-align: top">
                <br />
                <asp:Label ID="lblPName" runat="server" style="font-weight: 700; font-size: large"></asp:Label>
                <asp:Label ID="lblSubName" runat="server" style="font-weight: 700; font-size: large"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblPPrice" runat="server"></asp:Label>
                <br />
                <br />
&nbsp;<span class="auto-style14">Sold By</span><span class="auto-style13"> </span> <strong><span class="auto-style13">: </span> </strong>
                <asp:Label ID="lblSName" runat="server" CssClass="auto-style13" ></asp:Label>
                <asp:Label ID="lblSID" runat="server" CssClass="auto-style13"  Visible="false"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <strong><span class="auto-style12">Product Description
                     <br />
                     <br />
                </span></strong>
                <asp:Label ID="lblPdescription" runat="server" ></asp:Label>
                <br />
                <br />
                <br />
                <br />
&nbsp;<asp:Button ID="btnBuy" runat="server" Text="BUY NOW" BackColor="#FF6600" BorderColor="#FF6600" BorderStyle="None" ForeColor="White" Height="26px" Width="117px" OnClick="btnBuy_Click" />
                &nbsp;<asp:Button ID="btnCart" runat="server" Text="ADD TO CART" BackColor="#FF3300" BorderColor="#FF3300" BorderStyle="None" ForeColor="White" Height="26px" OnClick="btnCart_Click" Width="123px" />
                <br />
                <br />
&nbsp;
                </td>
        </tr>
    </table>
   
</asp:Content>
