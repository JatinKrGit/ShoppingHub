<%@ Page Title="Manage Your Addresses" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="AddAddress.aspx.cs" Inherits="OnlineShoppingManagement.AddAddress" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 100%;
            height: 995px;
        }
        .auto-style12 {
            width: 49%;
            height: 985px;
            margin-left:450px;
        }
        .auto-style13 {
            width: 1000px;
            height: 868px;
        }
        .auto-style14 {
            width: 98%;
        }
        .auto-style15 {
            width: 100px;
        }
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            width: 152px;
        }
        .auto-style18 {
            width: 87px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style11">
        <tr>
            <td  >
                <table class="auto-style12">
                    <tr>
                        <td class="auto-style13" style="vertical-align: top; text-align: center; color: black; background-color:white;">
                            <br />
                            <table class="auto-style14">
                                <tr>
                                    <td style="text-align: center; font-size: large;" class="auto-style15">&nbsp;</td>
                                    <td style="text-align: left; font-size: large;"><strong>ADD A NEW ADDRESS</strong></td>
                                </tr>
                            </table>
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                            <table class="auto-style14">
                                <tr>
                                    <td style="vertical-align: top; text-align: Left; color: black">&nbsp;Full Name*<br />
&nbsp;<asp:TextBox ID="txtName" runat="server" Width="350px" placeholder="  Full Name" ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredName" runat="server" ErrorMessage="Please provide the necessary details." ControlToValidate="txtName" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <br />
                                        <br />
                                        <br />
&nbsp;Mobile Number*<br />
                                        &nbsp;<asp:TextBox ID="txtMobile" runat="server" Width="350px" placeholder="  10-digit mobile number"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredMobileNo" runat="server" ErrorMessage="Please provide the necessary details." ControlToValidate="txtMobile" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <br />
                                        <br />
                                        <br />
&nbsp;Pincode*<br />
                                        &nbsp;<asp:TextBox ID="txtPin" runat="server" Width="350px" placeholder="6 digit [0-9] pincode"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredPincode" runat="server" ErrorMessage="Please provide the necessary details." ControlToValidate="txtPin" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <br />
                                        <br />
                                        <br />
                                        &nbsp;Street Address*<br />
                                        &nbsp;<asp:TextBox ID="txtStrretAdd" runat="server" Width="350px" Height="53px" placeholder=" House No, Building Name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredStreetAdd" runat="server" ErrorMessage="Please provide the necessary details." ForeColor="Red" ControlToValidate="txtStrretAdd"></asp:RequiredFieldValidator>
                                        <br />
                                        <br />
                                        <br />
&nbsp;Locality*<br />
&nbsp;<asp:TextBox ID="txtLocal" runat="server" Width="350px" placeholder=" Road Name, Area, Colony"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredLocality" runat="server" ErrorMessage="Please provide the necessary details." ForeColor="Red" ControlToValidate="txtLocal"></asp:RequiredFieldValidator>
                                        <br />
                                        <br />
                                        <br />
                                        <br />
&nbsp;State*<br />
&nbsp;<asp:DropDownList ID="ddlState" runat="server" OnSelectedIndexChanged="ddlState_SelectedIndexChanged" AutoPostBack="True">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredState" runat="server" ErrorMessage="Please provide the necessary details." ControlToValidate="ddlState" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <br />
                                        <br />
&nbsp;City*<br />
                                        &nbsp;<asp:DropDownList ID="ddlCity" runat="server">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredCity" runat="server" ErrorMessage="Please provide the necessary details." ControlToValidate="ddlCity" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <br />
                                        <br />
&nbsp;Landmark<br />
                                        &nbsp;<asp:TextBox ID="txtLandmark" runat="server" Width="350px" placeholder="  Landmark(optional)"></asp:TextBox>
                                        <br />
                                        <br />
                                        <br />
&nbsp;Alternate Phone<br />
                                        &nbsp;<asp:TextBox ID="txtAlternateNo" runat="server" Width="350px" placeholder=" Alternate Number(optional)"></asp:TextBox>
                                        <br />
                                        <br />
                                        <br />
                                        &nbsp;Type of Address*<br />
                            <asp:RadioButtonList ID="rbtAddType" runat="server" RepeatDirection="Horizontal" >
                                <asp:ListItem>Home</asp:ListItem>
                                <asp:ListItem>Office</asp:ListItem>
                            </asp:RadioButtonList>
                                        <asp:RequiredFieldValidator ID="RequiredAddType" runat="server" ErrorMessage="Please provide the necessary details." ControlToValidate="rbtAddType" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <br />
                                        <br />
                                        <table class="auto-style16">
                                            <tr>
                                                <td class="auto-style17">
                            <asp:Button ID="btnSaveAdd" runat="server" style="border-radius:10px" BackColor="#FF6600" BorderColor="#FF6600" BorderStyle="None" ForeColor="White" Text="Save Address" OnClick="btnSaveAdd_Click" Height="24px" Width="122px"  />
                                                </td>
                                                <td class="auto-style18">
                                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel"  style="border-style:none; border-radius:10px; height:24px; width:65px; background-color:#FF6600; color: #FFFFFF;" CausesValidation="False" OnClick="btnCancel_Click"/>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                            <br />
                                       
                                        </td>
                                </tr>
                            </table>
                            
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
