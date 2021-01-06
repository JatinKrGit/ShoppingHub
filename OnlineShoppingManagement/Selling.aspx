<%@ Page Title="Sell Online on Shopping Hub" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Selling.aspx.cs" Inherits="OnlineShoppingManagement.Selling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            height: 529px;
        }
        .auto-style11 {
            width: 100%;
            height: 144px;
        }
        .auto-style12 {
            font-size: x-large;
        }
        .auto-style13 {
            width: 100%;
        }
        .auto-style14 {
            width: 491px;
            font-size: large;
            height: 170px;
        }
        .auto-style15 {
            font-size: large;
            height: 170px;
        }
        .auto-style16 {
            font-size: large;
            width: 350px;
            height: 170px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td style="vertical-align: top; text-align: center">
                <table class="auto-style11">
                    <tr>
                        <td style="background-color: #008577; color: #FFFFFF;"><span class="auto-style12">
                            <br />
                            &quot;Start your business </span>
                            <br class="auto-style12" />
                            <span class="auto-style12">with Shopping Hub &<br />
&nbsp;reach customers across India&quot;<br />
                            <br />
                            </span>
                            <asp:Button ID="btnSell" runat="server" Text="Registre Now" style="
    border-style: none; border-radius: 40px; background-color: #FF6600; color: #FFFFFF; " Font-Bold="True" Height="33px" OnClick="btnSell_Click" Width="161px" />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
                <table class="auto-style13">
                    <tr>
                        <td>
                <strong><span class="auto-style12">Why sell on Online?<br />
                            <br />
                            </span></strong></td>
                    </tr>
                </table>
                <table class="auto-style13">
                    <tr>
                        <td class="auto-style14"><strong>The lowest cost of doing business</strong><br /><br />
                            . With the most competitive rate card in the industry, transparent delivery charges based on the weight and dimensions of your products and a small fixed fee.</td>
                        <td class="auto-style16"><strong>Growth
                             <br />
                             </strong>
                            <br />
                        Widen Your reach to a<br />
&nbsp;customer base of 1M and grow your business<br />
&nbsp;further with the support of Account Manager</td>
                        
                        <td class="auto-style15"><strong>E-Commerce: Your next big sales channel<br />
                            </strong><br />Start selling on Online -<br />
&nbsp;without building a website. 
                            <br />
                            Register now to start selling on Shopping Hub
                        </td>
                    </tr>
                </table>
                <strong><span class="auto-style12"><br />
                </span></strong></td>
        </tr>
    </table>
</asp:Content>
