<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SellerRegistration.aspx.cs" Inherits="OnlineShoppingManagement.SellerRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Seller Hub: SignIn/SignUp</title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
            height: 68px;
            background-color: #3399FF;
        }
        .auto-style3 {
            width: 156px;
            font-size: x-large;
        }
        .auto-style2 {
            width: 574px;
        }
        .auto-style10 {
            width: 100%;
            height: 699px;
        }
        .auto-style11 {
            width: 185px;
        }
        .auto-style12 {
            width: 209px;
        }
        .auto-style13 {
            width: 29%;
            margin-left:900px;
            height: 613px;
            margin-top: 0px;
        }
        .auto-style14 {
            font-size: x-large;
        }
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            width: 456px;
        }
        .auto-style17 {
            width: 286px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 809px">
       
        <table style="text-align:center" class="auto-style1">
            <tr>
                <td class="auto-style3" style="background-color: #3399FF; color: #FFFFFF; font-style: oblique; vertical-align: middle; "><strong>Seller<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hub</strong></td>
                <td class="auto-style2" style="text-align: center; vertical-align: middle; background-color: #3399FF;">
&nbsp;&nbsp;</td>
                <td class="auto-style12" style="vertical-align: middle; text-align: center; color: #FFFFFF; background-color: #3399FF;">
                    <br />
                    Email or Mobile Number<br />
                    <asp:TextBox ID="txtLEmail" runat="server" Height="16px" Width="165px" placeholder="Email or Mobile"></asp:TextBox>
                    <br />
                     <asp:RequiredFieldValidator ID="RequiredLEmail" runat="server" ControlToValidate="txtLEmail" ErrorMessage="Required!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <br />
                </td>
                <td class="auto-style11" style="vertical-align: middle; text-align: center; color: #FFFFFF; background-color: #3399FF;">
                    <br />
                    Password<br />
                    <asp:TextBox ID="txtLPass" runat="server" Height="16px" Width="149px" placeholder="*********" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredLPwd" runat="server" ControlToValidate="txtLPass" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td style="vertical-align: middle; text-align: left; color: #FFFFFF; background-color: #3399FF;">
                    <br />
                    <asp:Button ID="btnLogin" runat="server" BackColor="#FF6600" BorderColor="#FF6600" ForeColor="White" Text="Login"  style="border-radius:10px" Height="22px" Width="65px" OnClick="btnLogin_Click" BorderStyle="None" CausesValidation="False"/>
                    &nbsp;<asp:LinkButton ID="lbtnFgtPwd" runat="server" style="color: #FFFFFF; text-decoration: none; text-align:right " ToolTip="Reset Your Password?" CausesValidation="False" OnClick="lbtnFgtPwd_Click">Unable to Login?</asp:LinkButton>
                    </td>
            </tr>
        </table>
       
        <table class="auto-style15" style="background-color: #3399FF; color: #FFFFFF;">
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">
                    <asp:Label ID="lblMessage" runat="server" ForeColor="#FF3300" ></asp:Label>
                    </td>
            </tr>
        </table>
       
        <table class="auto-style10">
            <tr>
                <td style="background-image: url('Images/eating.jpg'); background-repeat: no-repeat">
                    <table class="auto-style13">
                        <tr>
                            <td style="background-image: url('Images/bg-01.jpg'); background-repeat: no-repeat; vertical-align: top; text-align: center; color: #FFFFFF;">
                                <br />
                                <strong><span class="auto-style14">Create your Seller Account</span></strong><br />
                                <br />
                                <br />
                                GST Number<br />
                        <asp:TextBox ID="txtGST" runat="server" style="Width:275px;border-radius:10px;" placeholder="  GST Number" MaxLength="15"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredGst" runat="server" ControlToValidate="txtGST" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                        Your Name<br />
                        <asp:TextBox ID="txtName" runat="server" style="Width:275px;border-radius:10px;" placeholder="  Full Name"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredName" runat="server" ControlToValidate="txtName" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                        <br />
                        &nbsp;Mobile Number<br />
                        <asp:TextBox ID="txtMobileNo" runat="server" style="Width:275px;border-radius:40px;" MaxLength="10" placeholder="  Mobile.No"></asp:TextBox>
                        <br />
                        <table class="auto-style12">
                            </table>
                                <asp:RequiredFieldValidator ID="RequiredMobileNo" runat="server" ControlToValidate="txtMobileNo" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                                Email<br />
                        <asp:TextBox ID="txtEmail" runat="server" style="Width:275px;border-radius:40px;" placeholder="  Email"></asp:TextBox>
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required!" ForeColor="Red" ></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Check EmailID !" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <br />
                        <br />
                        Password<br />
                        <asp:TextBox ID="txtPwd" runat="server" style="Width:275px;border-radius:40px;" placeholder="  *********" TextMode="Password" MaxLength="15"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredPWD" runat="server" ControlToValidate="txtPwd" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                                <asp:RadioButtonList ID="rbtnGender" runat="server" RepeatDirection="Horizontal" Style="margin-left:118px">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                                    
                                <asp:RequiredFieldValidator ID="RequiredGender" runat="server" ControlToValidate="rbtnGender" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <br />

                        <asp:Button  runat="server" Text="Create Your Account"  id="btnSignUp" style="
    border-style: none; border-radius: 40px; width: 177px; background-color: #FF6600; color: #FFFFFF; height: 24px;" OnClick="btnSignUp_Click"  />
                                <br />
                                <br />
                                    
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
       
    </div>
    </form>
</body>
</html>
