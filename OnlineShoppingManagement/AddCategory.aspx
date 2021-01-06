<%@ Page Title="Manage Category" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="OnlineShoppingManagement.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
            height: 352px;
        }
        .auto-style5 {
            width: 100%;
            height: 100px;
        }
        .auto-style7 {
        width: 100%;
    }
    .auto-style8 {
        width: 479px;
    }
        .auto-style9 {
            width: 601px;
        }
        .auto-style10 {
            font-size: large;
        }
    .auto-style13 {
        width: 479px;
        text-decoration: none;
        height: 298px;
    }
    .auto-style14 {
        height: 298px;
    }
    .auto-style15 {
        color: #000000;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td style="text-align: center">
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style9" style="text-align: right"><span class="auto-style10"><span class="auto-style15">ADD CATEGORY</span>Y:</span> </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtCategory" runat="server" style="text-align: left" Height="19px" Width="132px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredCategory" runat="server" ControlToValidate="txtCategory" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <table class="auto-style7">
                    <tr>
                        <td style="text-align: center">
                <asp:Button ID="btnCategory" runat="server" Text="ADD" Height="22px" Width="49px" OnClick="btnCategory_Click" />
                        </td>
                    </tr>
                </table>
                <br />
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style13"></td>
                        <td class="auto-style14">
                            <asp:GridView ID="grvList" runat="server" AutoGenerateColumns="False" CellPadding="4" OnRowDeleting="grvList_RowDeleting" style="margin-left: 0" Width="347px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
                                <Columns>
                                     <asp:TemplateField HeaderText="Category ID" >
                            <ItemTemplate>
                                <asp:Label ID="lblCategoryId" runat="server" Text='<%# Bind("Category_Id") %>'></asp:Label>
                            </ItemTemplate>
                                        </asp:TemplateField>

                                    <asp:TemplateField HeaderText="CategoryName">
                            <ItemTemplate>
                                <asp:Label ID="lblCategory" runat="server" Text='<%# Bind("CategoryName") %>'></asp:Label>
                            </ItemTemplate>
                                        </asp:TemplateField>
                                    <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lbtnDelete" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                            </ItemTemplate>
                                        </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#330099" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                <SortedDescendingHeaderStyle BackColor="#7E0000" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
