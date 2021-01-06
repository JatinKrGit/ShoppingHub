<%@ Page Title="" Language="C#" MasterPageFile="~/Seller.Master" AutoEventWireup="true" CodeBehind="ProfileDetails.aspx.cs" Inherits="OnlineShoppingManagement.ProfileDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
  
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            text-align: center;
        }

        .auto-style16 {
            height: 60px;
            width: 204px;
        }
        .auto-style15 {
            height: 60px;
        }
        
        .auto-style17 {
            height: 61px;
            width: 90px;
        }

        .auto-style19 {
            text-align: center;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 1259px; height: 528px;" >
    <tr>
        <td style="vertical-align: top">
            <br />
            <table class="auto-style6">
                <tr>
                    <td class="auto-style19"><h2>Personal Information</h2></td>
                </tr>
            </table>
            <br />
            <table style="width: 76%; margin-left:300px;">
                <tr>
                    <td class="auto-style16">Email-Id</td>
                    <td class="auto-style15">
                        <asp:Label ID="lblEmail" runat="server"></asp:Label>
                        <asp:LinkButton ID="lbtnChangePwd" runat="server" style="color: #FF0000; font-size:small" OnClick="lbtnChangePwd_Click" Visible="False">Change Password</asp:LinkButton></td>
                </tr>
                <tr>
                    <td class="auto-style17">Name</td>
                    <td class="auto-style15" style="height: 61px">
                        <asp:Label ID="lblName" runat="server"></asp:Label>
                    &nbsp;<asp:TextBox ID="txtName" runat="server" Visible="false"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">Mobile Number</td>
                    <td class="auto-style15">
                        <asp:Label ID="lblMobile" runat="server"></asp:Label>
                    &nbsp;<asp:TextBox ID="txtMobile" runat="server" Visible="false"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">Gender</td>
                    <td class="auto-style15">
                        <asp:Label ID="lblGender" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:Label ID="lblGSTNo" runat="server" Text="GST Number"></asp:Label></td>
                    <td class="auto-style15">
                        <asp:Label ID="lblGST" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <table class="auto-style6">
                <tr>
                    <td style="text-align: center">
                        <asp:Button ID="btnEdit" runat="server" Text="Edit" Style="border-radius:10px" BackColor="#FF6600" BorderColor="#FF6600" BorderStyle="None" ForeColor="White" Height="26px" OnClick="btnEdit_Click" Width="96px" />
                    &nbsp;
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" Visible="false" style="
    border-style: none; border-radius: 40px; background-color: #FF6600; color: #FFFFFF; " Height="26px"  Width="96px" OnClick="btnUpdate_Click"/>
                    &nbsp;
                        <asp:Button ID="btnBack" runat="server" Text="Cancle" Visible="false" style="
    border-style: none; border-radius: 40px; background-color: #FF6600; color: #FFFFFF; " Height="26px"  Width="96px" OnClick="btnBack_Click" />
                        <br />
                        <asp:LinkButton ID="lbtnDeactivate" runat="server" style=" font-size:small"  Visible="False" OnClick="lbtnDeactivate_Click">Deactivate Account</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
