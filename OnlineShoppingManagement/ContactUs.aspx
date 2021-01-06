<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="OnlineShoppingManagement.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            height: 418px;
            text-align: center;
        }
        .auto-style11 {
            font-size: x-large;
        }
        .auto-style12 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td>    <table class="auto-style10">
        <tr>
            <td style="background-color: #BBBBBB; vertical-align: top;">
                <br />
                <strong><span class="auto-style11">Contact Us</span></strong><br />
                <br />
                <br />
                <br />
                <br />
                Need help?&nbsp;&nbsp; Call us 24/7 at +91-7827925913<br />
                <br />
                <strong><span class="auto-style12">or</span></strong><br />
                <br />
                Email&nbsp; us 24/7 at&nbsp; <a href="mailto:jatinkumar1097@gmail.com">jatinkumar1097@gmail.com</a><br />
                <br />
                <div runat="server" id="SellerFeed">
                <strong><span class="auto-style12">or</span></strong><br />
                <br />
                Give Your FeedBack&nbsp; <a href="FeedBack.aspx">here</a><strong>.</strong></div>
                <br />
                <br />
            </td>
        </tr>
    </table>
            </td>
        </tr>
    </table>
</asp:Content>
