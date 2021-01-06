<%@ Page Title="Manage Saved Card" Language="C#" MasterPageFile="~/Profile.master" AutoEventWireup="true" CodeBehind="SavedCards.aspx.cs" Inherits="OnlineShoppingManagement.SavedCards" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width: 100%; height: 396px">
        <tr>
            <td style="vertical-align: top">
                <table style="width: 100%">
                    <tr>
                        <td>&nbsp; <a href="AddPaymentCard.aspx?SV=SavedCards" style="text-decoration: none"><strong>+ Add A New Card</strong></a></td>
                    </tr>
                </table>
                <strong>
                <br />
                <span style="font-size: large">Your saved credit and debit cards<br />
                </span></strong><br />
                <asp:Repeater ID="rptSavedCard" runat="server" OnItemCommand="rptSavedCard_ItemCommand">
                    <ItemTemplate>
                        <div class="login" style="border: 1px solid #ccc; width: 42%;">
                        <table>
                            <tr>
                                <td>
                                    <table style="width: 100%; height: 130px">
                    <tr>
                        <td style="vertical-align: top; width: 197px;">
                            <asp:Label ID="lblCid" runat="server" Visible="False" Text='<%# Bind("C_id") %>'></asp:Label>
                            <strong>&nbsp;&nbsp;Card No</strong><br />
&nbsp;                      <asp:Label ID="lblCardNo" runat="server" Text='<%# Bind("CardNumber") %>'></asp:Label>
                            <br />
                            <br />
                            <strong>&nbsp; Name on card</strong><br />
                            &nbsp;
                            <asp:Label ID="lblName" runat="server" Text='<%# Bind("NameOnCard") %>'></asp:Label>
                            <br />
                            <br />
                            <asp:LinkButton ID="lbtn" runat="server" CommandName="Remove">Remove</asp:LinkButton>

                        </td>
                        <td style="vertical-align: top">
                            <strong>Expiry Date</strong><br />
                            <asp:Label ID="lblDate" runat="server" Text='<%# Bind("ExpiryDate") %>'></asp:Label>
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
            
                
                
                </td>
        </tr>
    </table>
</asp:Content>
