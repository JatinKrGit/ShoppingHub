<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="FeedBack.aspx.cs" Inherits="OnlineShoppingManagement.FeedBack" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style10 {
            width: 100%;
            height: 473px;
        }
        .auto-style11 {
            width: 42%;
            margin-left:300px;
            height: 357px;
        }
        .auto-style12 {
            width: 100%;
        }
        .auto-style15 {
            height: 92px;
            text-align: right;
            width: 198px;
        }
        .auto-style14 {
            height: 92px;
        }
        .auto-style16 {
            height: 114px;
            text-align: right;
            width: 198px;
        }
        .auto-style13 {
            height: 114px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td style="vertical-align: top; text-align: center">
                <br />
                <table class="auto-style11">
                    <tr>
                        <td style="vertical-align: top">
                            <h2>FeedBack Form</h2>
                            <table class="auto-style12">
                                <tr>
                                    <td class="auto-style15">Name<strong>:</strong></td>
                                    <td class="auto-style14">
                                        <asp:TextBox ID="txtName" runat="server" Height="19px" Width="240px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredName" runat="server" ControlToValidate="txtName" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style16">FeedBack<strong>:</strong></td>
                                    <td class="auto-style13">
                                        <asp:TextBox ID="txtFeedBack" runat="server" Height="79px" Width="240px" MaxLength="500"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFeedBack" runat="server" ControlToValidate="txtFeedBack" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <asp:Button ID="btnFeedBack" runat="server" Text="Send FeedBack" style="border-radius:10px" BackColor="#FF6600" BorderColor="#FF6600" BorderStyle="None" ForeColor="White" Height="22px" Width="145px" OnClick="btnFeedBack_Click" />
                        &nbsp;<asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
