<%@ Page Title="Search Results" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="OnlineShoppingManagement.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            height: 623px;
        }
        .auto-style11 {
            width: 103%;
            height: 382px;
        }
        .auto-style12 {
            width: 358px;
        }
        .auto-style13 {
            width: 1026px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td style="vertical-align: top">
                <br />
            
                <asp:DataList ID="DatalistSearch" runat="server" OnItemCommand="DatalistSearch_ItemCommand">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td class="auto-style13">
                                    <table class="auto-style11">
                    <tr>
                        <td class="auto-style12" style="vertical-align: middle; text-align: center">
                             <asp:Image ID="imgurl" runat="server" Height="323px" Width="175px" ImageUrl='<%# Bind("ProductImageURL") %>' />
                            <br />
                            <asp:Label ID="lblPid" runat="server" Visible="False" Text='<%# Bind("Product_Id") %>'></asp:Label>
                        </td>
                        <td style="vertical-align: top">
                            <br />
                          &nbsp;<asp:Label ID="lblPName" runat="server" style="font-weight: 700; font-size: large" Text='<%# Bind("ProductName") %>'></asp:Label>
                            <asp:Label ID="lblSubName" runat="server" style="font-weight: 700; font-size: large" Text='<%# Bind("SubName") %>'></asp:Label>
                            <br />
                            <br />
&nbsp;
                            <asp:LinkButton ID="lbtnPrice" runat="server" Text='<%# Bind("ProductPrice") %>'  CommandName="Price" Font-Overline="False" Font-Underline="False"></asp:LinkButton>
                            <br />
                            <br />
                            <asp:Label ID="lblSID" runat="server"  Text='<%# Bind("EmailId") %>' Visible="false"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="lblPDescription" runat="server" style="text-decoration:none" Text='<%# Bind("ProductDescription") %>'  ></asp:Label>
                            <br />
                            <br />
&nbsp;                      <asp:LinkButton ID="lbtnBook" runat="server" ForeColor="OrangeRed" CommandName="BookNow" Font-Overline="False" Font-Underline="False">BookNow</asp:LinkButton>
                        </td>
                    </tr>
                </table>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            
            </td>
        </tr>
    </table>
</asp:Content>
