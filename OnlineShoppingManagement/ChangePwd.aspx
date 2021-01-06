<%@ Page Title="" Language="C#" MasterPageFile="~/Seller.Master" AutoEventWireup="true" CodeBehind="ChangePwd.aspx.cs" Inherits="OnlineShoppingManagement.ChangePwd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style13 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 32%; height: 499px; margin-left: 400px">
        <tr>
            <td style="vertical-align: top">
                <h2 class="auto-style13">Change Password</h2>
                <br />Current Password*<br />
                <asp:TextBox ID="txtCrntPwd" runat="server" Width="150px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCrntPwd" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />New Password*<br />
                <asp:TextBox ID="txtNewPwd" runat="server" Width="150px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNewPwd" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />Confirm New Password*<br />
                <asp:TextBox ID="txtCnfrmPwd" runat="server" Width="150px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPwd" ControlToValidate="txtCnfrmPwd" ErrorMessage="Password not matching" ForeColor="Red"></asp:CompareValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCnfrmPwd" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <table style="width: 100%">
                    <tr>
                        <td style="text-align: right; vertical-align: top; width: 189px;">
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="false" style="border-style:none; height:25px; width:90px; background-color:#FF6600; color: #FFFFFF; border-radius:10px" OnClick="btnCancel_Click"/>
                        </td>
                        <td style="text-align: left; vertical-align: top">
                            <asp:Button ID="btnSave" runat="server"  style="border-radius:10px" Text="Save Change" BackColor="#FF6600" BorderColor="#FF6600" BorderStyle="None" ForeColor="White" Height="25px"  Width="95px" OnClick="btnSave_Click"  />
                        </td>
                    </tr>
                </table>
                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="lbtnFgtPwd" runat="server" Font-Underline="False" style="color: #000000" CausesValidation="False" OnClick="lbtnFgtPwd_Click">Forget Password?</asp:LinkButton><br />
                <br />
                <table style="width: 100%">
                    <tr>
                        <td style="vertical-align: bottom; text-align: center">Once the password is successfully changed,<br />you will need to login again</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
