<%@ Page Title="" Language="C#" MasterPageFile="~/Profile.master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="OnlineShoppingManagement.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width: 100%; height: 482px">
        <tr>
            <td style="vertical-align: top">
                <br />
                <table style="width: 42%; height: 398px; margin-left: 200px">
                    <tr>
                        <td style="vertical-align: top"><h2>Change Password</h2>
                            
                            Current Password*<br />
                            <asp:TextBox ID="txtCrntPwd" runat="server" Width="150px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCrntPwd" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br /><br />

                            New Password*<br />
                            <asp:TextBox ID="txtNewPwd" runat="server" Width="150px"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtCrntPwd" ControlToValidate="txtNewPwd" ErrorMessage="Password not matching" ForeColor="Red" Operator="NotEqual"></asp:CompareValidator>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNewPwd" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br /><br />

                            Confirm New Password*<br />
                            <asp:TextBox ID="txtCnfrmPwd" runat="server" Width="150px"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPwd" ControlToValidate="txtCnfrmPwd" ErrorMessage="Password not matching" ForeColor="Red"></asp:CompareValidator>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCnfrmPwd" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <table style="width: 100%">
                                <tr>
                                    <td style="text-align: right; vertical-align: top; width: 189px;">
                                        <asp:Button ID="BtnCancel" runat="server" Text="Cancel" style="border-style:none; height:25px; width:90px; background-color:#FF6600; color: #FFFFFF; border-radius:10px" CausesValidation="false" OnClick="BtnCancel_Click" /></td>
                                    <td style="text-align: left; vertical-align: top">
                            <asp:Button ID="btnSave" runat="server"  style="border-radius:10px" Text="Save Change" BackColor="#FF6600" BorderColor="#FF6600" BorderStyle="None" ForeColor="White" Height="25px" OnClick="btnSave_Click1" Width="95px"  /></td>
                                </tr>
                            </table>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="ResetPassword.aspx?UT=C" style="color: #000000; text-decoration: none">Forget Password?</a><br />
                            <br />
                            <table style="width: 100%">
                                <tr>
                                    <td style="vertical-align: bottom; text-align: center">Once the password is successfully changed,<br />
                                        you will need to login again</td>
                                </tr>
                            </table>

                            </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
