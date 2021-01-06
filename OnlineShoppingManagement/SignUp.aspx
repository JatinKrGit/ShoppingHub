<%@ Page Title="Shopping Hub Registration" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="OnlineShoppingManagement.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
        width: 100%;
        background-image: url('Images/background-balance-business-commerce-583846.jpg');
            height: 782px;
        margin-right: 34px;
    }
        .auto-style11 {
            width: 42%;
            height: 656px;
            margin-left:700px;
        }
        .auto-style12 {
            width: 100%;
        }
    .auto-style13 {
        height: 827px;
        width: 95%;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
    <tr>
        <td style="background-repeat: no-repeat; background-image: url('Images/background-bags(1360-829).jpg');" class="auto-style13">
            <table class="auto-style11">
                <tr>
                    <td style="border-color: #FFFFFF; border-style: double; background-image: url('Images/bg-01.jpg'); vertical-align: top; text-align: center; color: #FFFFFF; font-size: large;">
                        <br />
                        <br />
                        <table class="auto-style12">
                            <tr>
                                <td style="font-size: xx-large; vertical-align: middle; text-align: center;">Sign Up</td>
                            </tr>
                        </table>
                        <br />
                        Your Name<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtName" runat="server" style="Width:275px;border-radius:10px;" placeholder="  Full Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredName" runat="server" ControlToValidate="txtName" ErrorMessage="Required !" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <br />
                        &nbsp;Mobile Number<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtMobileNo" runat="server" style="Width:275px;border-radius:40px;" MaxLength="10" placeholder="  Mobile.No"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredMobile" runat="server" ControlToValidate="txtMobileNo" ErrorMessage="Required !" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <table class="auto-style12">
                            </table>
                        <br />
                        &nbsp;Email<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtEmail" runat="server" style="Width:275px;border-radius:40px;" placeholder="  Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required !" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularEmail" runat="server" ErrorMessage="Check Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        Password<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtPwd" runat="server" style="Width:275px;border-radius:40px;" MaxLength="15" TextMode="Password"  placeholder="  *************"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredPwd" runat="server" ControlToValidate="txtPwd" ErrorMessage="Required !" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                       <asp:RadioButtonList ID="rbtGender" runat="server" RepeatDirection="Horizontal" style="margin-left: 198px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                                    
                        <br />

                        <asp:Button  runat="server" Text="Create Your Account"  id="btnSignUp" style="
    border-style: none; border-radius: 40px; width: 177px; background-color: #FF6600; color: #FFFFFF; height: 24px;" OnClick="btnSignUp_Click" />
                        <br />
                        <br />
                        Already have an account? <a href="Login.aspx" style="color: #FF6600">Sign in</a></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
