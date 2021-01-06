<%@ Page Title="" Language="C#" MasterPageFile="~/Seller.Master" AutoEventWireup="true" CodeBehind="ViewPayment.aspx.cs" Inherits="OnlineShoppingManagement.ViewPayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
            height: 526px;
            text-align: center;
        }
        .auto-style9 {
            font-size: x-large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style8">
        <tr>
            <td style="vertical-align: top">
                <br />
                <strong><span class="auto-style9">ViewPayment<br />
                <br />
                            <asp:GridView ID="grvPayment" runat="server" CellPadding="4" AutoGenerateColumns="False" Height="209px" style="font-size: medium"  Width="100%" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
                                <Columns>
                        <asp:TemplateField HeaderText="Payment_Id">
                            <ItemTemplate>
                                <asp:Label ID="lblPayId" runat="server" Text='<%# Bind("Payment_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Produt_ID">
                            <ItemTemplate>
                                <asp:Label ID="lblOrderID" runat="server" Text='<%# Bind("Product_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="User_Id">
                            <ItemTemplate>
                                <asp:Label ID="lblUserID" runat="server" Text='<%# Bind("U_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="PaymentType">
                            <ItemTemplate>
                                <asp:Label ID="lblPayMode" runat="server" Text='<%# Bind("PaymentType") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                                    <asp:TemplateField HeaderText="DateTime">
                            <ItemTemplate>
                                <asp:Label ID="lblDate" runat="server" Text='<%# Bind("DateTime") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" ForeColor="#003399" />
                                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                <SortedDescendingHeaderStyle BackColor="#002876" />
                            </asp:GridView>
                </span>
                </strong></td>
                
        </tr>
    </table>
</asp:Content>
