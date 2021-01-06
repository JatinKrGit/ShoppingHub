<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="OnlineShoppingManagement.Help" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            height: 434px;
            text-align: center;
        }
        .auto-style11 {
            width: 100%;
            height: 148px;
        }
        .auto-style12 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td style="background-color: #BBBBBB">
                <table class="auto-style11">
                    <tr>
                        <td style="background-color: #FFFFFF; vertical-align: top;"><strong><span class="auto-style12">Any Query</span></strong><br />
                            <br />
                            <br />
                            <asp:DropDownList ID="ddlQuery" runat="server" Height="39px" Width="260px">
                                <asp:ListItem>Select Your Query</asp:ListItem>
                                <asp:ListItem> I have an issue with my account</asp:ListItem>
                                <asp:ListItem> I have a query on an item/on delivery</asp:ListItem>
                                <asp:ListItem>I want information on shopping offer</asp:ListItem>
                                <asp:ListItem>I have a payment/order related query</asp:ListItem>
                                <asp:ListItem>I want information on your rturn policy</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
                <br />
                Need help?&nbsp;&nbsp; <asp:LinkButton ID="lbtnContactUs" runat="server" Text="ContactUs" OnClick="lbtnContactUs_Click"></asp:LinkButton>&nbsp; 24/7 at +91-7827925913<br />
                <br />
                <strong><span class="auto-style12">or</span></strong><br />
                <br />
                Email&nbsp; us 24/7 at&nbsp; <a href="mailto:jatinkumar1097@gmail.com">jatinkumar1097@gmail.com</a><br />
                <br />
                <div runat="server" id="SellerFeed">
                <strong><span class="auto-style12">or</span></strong><br />
                <br />
                Give Your FeedBack <a href="FeedBack.aspx">here!</a><br />
                </div>
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
