<%@ Page Title="" Language="C#" MasterPageFile="~/Profile.master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="OnlineShoppingManagement.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width: 100%; height: 435px">
        <tr>
            <td style="vertical-align: top">
                <table style="width: 100%">
                    <tr>
                        <td><span style="color: rgb(105, 107, 121); font-family: Whitney; font-size: 22px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><strong>Edit Profile</strong></span></td>
                    </tr>
                </table>
                <br />
                <table style="width: 100%">
                    <tr>
                        <td style="width: 32px">Email*<br />
                            <asp:Label ID="lblEmail" runat="server"></asp:Label>
                        <asp:LinkButton ID="lbtnChangePwd" runat="server" style="color: #FF0000; font-size:small" OnClick="lbtnChangePwd_Click">Change Password</asp:LinkButton></td>
                    </tr>
                </table>
                <br />
                <table style="width: 100%">
                    <tr>
                        <td><span style="color: rgb(105, 107, 121); font-family: Whitney; font-size: 22px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><strong>General Information</strong></span></td>
                    </tr>
                </table>
                <br />
                <table style="width: 100%">
                    <tr>
                        <td style="width: 187px; height: 40px">Name</td>
                        <td class="auto-style18" style="height: 40px">
                            <asp:TextBox ID="txtName" runat="server" Height="16px" Width="240px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredName" runat="server" ControlToValidate="txtName" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 187px; height: 40px">Mobile Number</td>
                        <td class="auto-style18" style="height: 40px">
                            <asp:TextBox ID="txtMobile" runat="server" Height="16px" style="margin-left: 0px" Width="240px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredNo" runat="server" ControlToValidate="txtMobile" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 187px; height: 38px">Gender</td>
                        <td class="auto-style17" style="height: 38px">
                            <asp:RadioButtonList ID="rbtnGender" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                </table>
                <br />
                <table style="width: 100%">
                    <tr>
                        <td style="width: 255px; text-align: right;">
                            <asp:Button ID="btnCancel" runat="server" style="
    border-style: none; border-radius: 40px; background-color: #FF6600; color: #FFFFFF; " Height="26px" Text="CANCEL" Width="96px" OnClick="btnCancel_Click" />
&nbsp;&nbsp;&nbsp; </td>
                        <td>&nbsp;&nbsp;
                            <asp:Button ID="btnUpdate" runat="server" style="
    border-style: none; border-radius: 40px; background-color: #FF6600; color: #FFFFFF; " Height="26px" Text="UPDATE" Width="96px" OnClick="btnUpdate_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
