<%@ Page Title="Manage Payment Method" Language="C#" MasterPageFile="~/Profile.master" AutoEventWireup="true" CodeBehind="AddPaymentCard.aspx.cs" Inherits="OnlineShoppingManagement.AddPaymentCard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width: 100%; height: 428px">
        <tr>
            <td style="vertical-align: top">
                <br />
                <table style="width: 396px; height: 398px; margin-left:250px">
                    <tr>
                        <td style="vertical-align: top">
                            <table style="width: 100%">
                                <tr>
                                    <td style="font-size: large"><strong>Add New Debit/Credit Card</strong></td>
                                </tr>
                            </table>
                            <br />
                            Card Number*<br />
                            <asp:TextBox ID="txtCardNo" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCardNo" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            Name on Card*<br />
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            Expiry Date<br />
                            <asp:TextBox ID="txtDate" runat="server" TextMode="Month" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDate" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <br />
                            <asp:Button ID="btnSave" runat="server" style="border-radius:10px" BackColor="#FF6600" BorderColor="#FF3300" BorderStyle="None" ForeColor="White" Height="25px" Text="Save This Card" Font-Bold="True" OnClick="btnSave_Click" Width="113px" />
                            &nbsp;<asp:Button ID="BtnCancel" runat="server" Text="Cancel" style="border-style:none; border-radius:10px; height:24px; width:65px; background-color:#FF6600; color: #FFFFFF; font-weight: bold;" CausesValidation="False" OnClick="BtnCancel_Click" /><br />
                            <br />
                            <table style="width: 100%">
                                <tr>
                                    <td style="text-align: center"><span style="font-size: small">Your card details would be securely saved for faster payments. Your CVV will not be stored</span></td>
                                </tr>
                            </table>
                            <br />
                            </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
