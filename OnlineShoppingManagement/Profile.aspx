<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/Profile.master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="OnlineShoppingManagement.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
<table style="width: 100%; height: 461px;">
    <tr>
        <td class="auto-style15" style="height: 324px; vertical-align: top;">
            <table style="width: 100%">
                <tr>
                    <td><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><strong>Personal Information</strong></span></td>
                </tr>
            </table>
            <table style="width: 100%">
                <tr>
                    <td style="height: 60px; width: 180px">Email-Id</td>
                    <td class="auto-style15">
                        <asp:Label ID="lblEmail" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="height: 61px; width: 180px">Name</td>
                    <td class="auto-style15" style="height: 61px">
                        <asp:Label ID="lblName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="height: 60px; width: 180px">Gender</td>
                    <td class="auto-style15">
                        <asp:Label ID="lblGender" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="height: 60px; width: 180px">Mobile Number</td>
                    <td class="auto-style15">
                        <asp:Label ID="lblMobile" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <table style="width: 100%">
                <tr>
                    <td class="auto-style10" style="width: 143px">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnEdit" runat="server" style="
    border-style: none; border-radius: 40px; background-color: #FF6600; color: #FFFFFF; " Height="26px" Text="EDIT" Width="96px" OnClick="btnEdit_Click"  />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
