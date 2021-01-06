<%@ Page Title="Manage Product" Language="C#" MasterPageFile="~/Seller.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="OnlineShoppingManagement.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            
        }
        .auto-style5 {
            text-align: center;
            width: 1658px;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            width: 582px;
            text-align: right;
        }
        .auto-style8 {
            text-align: justify;
        }
        .auto-style13 {
            width: 582px;
            text-align: right;
            height: 60px;
        }
        .auto-style14 {
            text-align: justify;
            height: 60px;
        }
        .auto-style15 {
            width: 582px;
            text-align: right;
            height: 59px;
        }
        .auto-style16 {
            text-align: justify;
            height: 59px;
        }
        .auto-style17 {
            width: 582px;
            text-align: right;
            height: 56px;
        }
        .auto-style18 {
            text-align: justify;
            height: 56px;
        }
        .auto-style19 {
            width: 1645px;
        }
        .auto-style20 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2" style="height: 354px; width: 100%;">
        <tr>
            <td style="vertical-align: top" class="auto-style19">
                <div class="auto-style20" >
                    <strong><span class="auto-style6" style="vertical-align: middle; text-align: center">ADD PRODUCT</span></strong><br />
                <br />
                </div>
                <table class="auto-style2" style="height: 390px; width: 100%;">
                    <tr>
                        <td class="auto-style15">ProductCategory <strong>:</strong></td>
                        <td class="auto-style16">
                            <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True">
                               
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="requiredCategory" runat="server" ControlToValidate="ddlCategory" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">ProductName<strong> :</strong>&nbsp; </td>
                        <td class="auto-style14">
                            <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredName" runat="server" ControlToValidate="txtProductName" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Product SubName <strong>:</strong></td>
                        <td class="auto-style14">
                            <asp:TextBox ID="txtSubName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">ProductPrice <strong>:</strong>&nbsp; </td>
                        <td class="auto-style14">
                            <asp:TextBox ID="txtProductPrice" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredPrice" runat="server" ControlToValidate="txtProductPrice" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">ProductDescription <strong>:</strong>&nbsp; </td>
                        <td class="auto-style14">
                            <asp:TextBox ID="txtProductDescription" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredDecrip" runat="server" ControlToValidate="txtProductDescription" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">ProductImage <strong>:</strong>&nbsp; </td>
                        <td class="auto-style18">
                            <asp:FileUpload ID="FupImage" runat="server" AllowMultiple="True" />
                            <asp:RequiredFieldValidator ID="requiredImg" runat="server" ControlToValidate="FupImage" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">
                            <asp:Button ID="btnAdd" runat="server" Text="Add Product" OnClick="btnAdd_Click" />
                            <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                            <br />
                            </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
