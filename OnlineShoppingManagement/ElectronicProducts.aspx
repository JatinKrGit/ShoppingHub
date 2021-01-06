<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="ElectronicProducts.aspx.cs" Inherits="OnlineShoppingManagement.ElectronicsProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="dlProductList" runat="server" RepeatColumns="4"  RepeatDirection="Vertical" Width="1260px" OnItemCommand="dlProductList_ItemCommand" >
        <ItemTemplate>
            <br />
            <table style="margin-left:120px">
                <tr>
                    <td>
                        <table class="auto-style11">
                            <tr>
                                <td style="vertical-align: top; text-align: center;">
                                    <asp:Image ID="Image1" runat="server"  ImageUrl='<%# Bind("ProductImageURL") %>' Height="200px" Width="101px" />
                                    <br />
                                    <asp:Label ID="lblPid" runat="server" Visible="false" Text='<%# Bind("Product_Id") %>'></asp:Label>
                                    <asp:Label ID="lblProductName" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                                    <br />
                                    <asp:LinkButton ID="lbtnPrice" runat="server" style="text-decoration:none" Text='<%# Bind("ProductPrice") %>' CommandName="Price"></asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
