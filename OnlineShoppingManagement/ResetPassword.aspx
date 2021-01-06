<%@ Page Title="Forgot Password" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="OnlineShoppingManagement.ResetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 37%;
            margin-left:700px;
            height: 454px;
        }
        .auto-style12 {
            width: 100%;
        }
        .auto-style13 {
            width: 1280px;
            height: 824px;
        }
        .auto-style14 {
            width: 470px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td style="background-image: url('Images/background-bags(1360-829).jpg'); background-repeat: no-repeat;" class="auto-style13">
                <table class="auto-style11">
                    <tr>
                        <td style="background-image: url('Images/bg-01.jpg'); vertical-align: middle; text-align: center; color: #FFFFFF;" class="auto-style14">


                            <h1 style="text-align: center">Forget Password?</h1>
                            <h4>Please Verify Your Email Or Mobile Number</h4>
                            <table class="auto-style12">
                                <tr>
                                    <td>
                                        <br />
                                        <asp:TextBox ID="txtEmail" runat="server" Style="height: 16px; border-radius: 10px;" Width="185px" placeholder=" Enter Your Email "></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:TextBox ID="txtNewPwd" runat="server" Style="height: 16px; border-radius: 10px;" placeholder=" Enter Your New Password" Width="185px" Visible="False"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredNewPwd" runat="server" ControlToValidate="txtNewPwd" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                    </td>
                                    <td>
                                        <br />
                                        <asp:TextBox ID="txtMobile" runat="server" Style="height: 16px; border-radius: 10px;" Width="185px" placeholder=" Enter Your Mobile No "></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredMobile" runat="server" ControlToValidate="txtMobile" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:TextBox ID="txtCnfrmNewPwd" runat="server" Style="height: 16px; border-radius: 10px;" placeholder=" Enter Confirm New Password" Width="185px" Visible="False"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredCnfrmPwd" runat="server" ControlToValidate="txtCnfrmNewPwd" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                    </td>
                                </tr>
                            </table>

                            <p style="text-align: center">
                                &nbsp;</p>
                            <p style="text-align: center">
                                <asp:Button ID="btnVerify" runat="server" Text="Verify" Style="border-style: none; border-radius: 40px; width: 100px; background-color: #FF6600; color: #FFFFFF; height: 24px;"
                                    OnClick="btnVerify_Click" />
                            </p>
                            <p style="text-align: center">
                                <asp:Button ID="btnSave" runat="server" Text="Save" Style="border-style: none; border-radius: 40px; width: 100px; background-color: #FF6600; color: #FFFFFF; height: 24px;"
                                    Visible="False" OnClick="btnSave_Click" />
                            </p>
                            <p style="text-align: center">
                                <asp:Label ID="lblMsg" runat="server" Style="color: #FF0000"></asp:Label>
                            </p>
                            <a href="Login.aspx" style="text-decoration: none; color: #FF3300"><strong>Login!</strong></a></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
