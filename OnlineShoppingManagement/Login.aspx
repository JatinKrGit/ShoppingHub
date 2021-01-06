<%@ Page Title="Shopping Hub: Sign In" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineShoppingManagement.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 38%;
            height: 513px;
            margin-left:700px;
        }
        .auto-style11 {
            width: 100%;
            height: 314px;
        }
        .auto-style12 {
            height: 23px;
        }
        .auto-style13 {
            width: 30px;
            height: 31px;
        }
        .auto-style15 {
            width: 46px;
            height: 42px;
        }
        .auto-style16 {
            height: 753px;
            width: 102%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7" style="height: 828px">
    <tr>
        <td style="background-image: url('Images/background-bags(1360-829).jpg'); background-repeat: no-repeat;" class="auto-style16"> <table class="auto-style10" style="background-color: #FFFFFF">
            <tr>
                <td style="background-image: url('Images/bg-01.jpg'); color: #FFFFFF; vertical-align: middle; text-align: center;">
                    <table class="auto-style11" style="color: #FFFFFF">
                        <tr>
                            <td class="auto-style12" style="vertical-align: middle; text-align: center; color: #FFFFFF;"><h1>Sign in</h1></td>
                        </tr>
                        <tr>
                            <td style="color: #FFFFFF; vertical-align: middle; text-align: center">Email or Phone No<br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                               <asp:TextBox ID="txtLoginId" runat="server" Width="163px" placeholder="Email or Phone"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLoginId" ErrorMessage="Enter your email or mobile no" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #FFFFFF; vertical-align: middle; text-align: center">Password<br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                               <asp:TextBox ID="txtPwd" runat="server" MaxLength="15" TextMode="Password" Width="163px" placeholder="*************"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="Enter your password." ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                
                                   <br />
                                   <asp:Button ID="btnSubmit" runat="server"  BackColor="#FF3300" BorderColor="#FF3300" BorderStyle="None" ForeColor="White" Text="Sign in" Width="61px" Height="24px" OnClick="btnSubmit_Click"  />
&nbsp;<br />
                                   <asp:Label ID="lblMessage" runat="server" ForeColor="#FF3300"></asp:Label>
                                   <br />
                                   <a href="ResetPassword.aspx?UT=V" style="color: #FFFFFF; text-decoration: none">Forgot Your Password?</a><br />
                                   <br />
                                
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; vertical-align: middle; color: #FFFFFF">Or&nbsp; Login With<br />
                            </td>
                        </tr>
                        <tr>
                            <td><asp:ImageButton ID="imgbtnF" runat="server" CssClass="auto-style15" ImageUrl="~/Images/facebook.png" style="vertical-align: middle; text-align: center; text-decoration: none;" OnClick="imgbtnF_Click" />&nbsp;&nbsp;<asp:ImageButton ID="imgbtnG" runat="server" CssClass="auto-style13" ImageUrl="~/Images/icon-google.png"  style="vertical-align: middle; text-align: center; text-decoration: none;" OnClick="imgbtnG_Click" /></td>
                        </tr>
                    </table>
                &nbsp;
                    <br />
Don&#39;t Have an Account? <a href="SignUp.aspx" style="color: #FF6600">Click here</a></td>
            </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
