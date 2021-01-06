<%@ Page Title="Your Addresses" Language="C#" MasterPageFile="~/Profile.master" AutoEventWireup="true" CodeBehind="Addresses.aspx.cs" Inherits="OnlineShoppingManagement.Addresses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width: 100%; height: 434px">
        <tr>
            <td style="vertical-align: top">
                <table style="width: 100%">
                    <tr>
                        <td>&nbsp;<asp:LinkButton ID="lbtnAddAddress" runat="server" Font-Overline="False" Font-Underline="False" OnClick="lbtnAddAddress_Click" style="font-size: medium">+ Add New Address</asp:LinkButton></td>
                    </tr>
                </table>
                <br />
                <asp:Repeater ID="rptAddDetails" runat="server" OnItemCommand="rptAddDetails_ItemCommand">
                    <ItemTemplate>
                        <div class="login" style="border: 1px solid #ccc; width: 42%;">
                            <table>
                                <tr>
                                    <td>
                                        <table style="width: 100%">
                                            <tr>
                                                <td style="width: 443px">
                                                    <asp:Label ID="lblName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                                    <asp:Label ID="lblid" runat="server" Text='<%# Bind("id") %>' Visible="false"></asp:Label>
                                                    <br />
                                                    <br />
                                                    <asp:Label ID="lblStreetAdd" runat="server" Text='<%# Bind("StreetAdd") %>'></asp:Label>
                                                    <br />
                                                    <asp:Label ID="lblCity" runat="server" Text='<%# Bind("CityName") %>'></asp:Label>
                                                    &nbsp;<asp:Label ID="lblState" runat="server" Text='<%# Bind("StateName") %>'></asp:Label>
                                                    &nbsp;<asp:Label ID="lblPin" runat="server" Text='<%# Bind("Pincode") %>'></asp:Label>
                                                    <br />
                                                    <br />
                                                    Phone Number:&nbsp;
                            <asp:Label ID="lblMNo" runat="server" Text='<%# Bind("ContactNo") %>'></asp:Label>
                                                    <br />
                                                    <br />
                                                    <asp:LinkButton ID="lbtnEdit" runat="server" Font-Underline="True" CommandName="Edit">Edit</asp:LinkButton>
                                                    &nbsp;|
                            <asp:LinkButton ID="lbtnRemove" runat="server" Font-Underline="True" CommandName ="Remove">Remove</asp:LinkButton>
                                                </td>
                                                <td style="vertical-align: top">
                                                    <asp:Label ID="lblAddType" runat="server" Text='<%# Bind("AddType") %>'></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <br />
                    </ItemTemplate>
                </asp:Repeater>

                <br />


            </td>
        </tr>
    </table>
</asp:Content>
