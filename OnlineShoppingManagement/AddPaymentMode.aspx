<%@ Page Title="Manage Payment Method" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddPaymentMode.aspx.cs" Inherits="OnlineShoppingManagement.AddPaymentMode" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            width: 100%;
            height: 100px;
        }
        .auto-style15 {
        color: #000000;
    }
        .auto-style7 {
        width: 100%;
    }
    .auto-style13 {
        width: 479px;
        text-decoration: none;
        height: 298px;
    }
    .auto-style14 {
        height: 298px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td style="text-align: center">
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style9" style="text-align: right"><span class="auto-style10"><span class="auto-style15">ADD PAYMENT MODE</span>Y:</span> </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtPayMode" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredPayMode" runat="server" ErrorMessage="Required!" ForeColor="Red" ControlToValidate="txtPayMode"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <table class="auto-style7">
                    <tr>
                        <td style="text-align: center">
                            <asp:Button ID="btnadd" runat="server" Text="ADD" OnClick="btnadd_Click" />
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
                                    <asp:TemplateField HeaderText="PaymentMode_Id">
                                        <ItemTemplate>
                                            <asp:Label ID="lblPayModeId" runat="server" Text='<%# Bind("PaymentMode_Id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="PaymentMode">
                                        <ItemTemplate>
                                            <asp:Label ID="lblPayMode" runat="server" Text='<%# Bind("PaymentMode") %>'></asp:Label>
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
