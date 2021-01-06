<%@ Page Title="User Details" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="OnlineShoppingManagement.UserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
        }
          .auto-style5 {
              text-align:center;
        }
        .auto-style6 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <table class="auto-style4">
        <tr>
            <td style="text-align:center"><h3>Select UserType:<asp:DropDownList ID="ddlUserType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlUserType_SelectedIndexChanged">
                <asp:ListItem>Select User</asp:ListItem>
                <asp:ListItem>Customer</asp:ListItem>
                <asp:ListItem>Seller</asp:ListItem>
                </asp:DropDownList>
                </h3>
            </td>
        </tr>
        <tr>
            <td style="vertical-align: top">
                <div id="Customer" runat="server" visible="false" class="auto-style5">
                    <br />
                    <strong><span class="auto-style6">Customer Details </span></strong>
                <asp:GridView ID="grvCustDetail" runat="server" Width="100%" Height="186px" HorizontalAlign="Center" AutoGenerateColumns="False" CellPadding="4" OnRowCancelingEdit="grvUserDetail_RowCancelingEdit" OnRowEditing="grvUserDetail_RowEditing" OnRowDeleting="grvUserDetail_RowDeleting" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" OnRowCommand="grvCustDetail_RowCommand" >
                    <Columns>

                        <asp:TemplateField HeaderText="User_ID" ItemStyle-CssClass="auto-style5" Visible="false">
                            <ItemTemplate >
                                <asp:Label ID="lblUID" runat="server" Text='<%# Bind("U_Id") %>'></asp:Label>
                            </ItemTemplate><ItemStyle CssClass="auto-style5"></ItemStyle>
                            </asp:TemplateField>

                        <asp:TemplateField HeaderText="Name" ItemStyle-CssClass="auto-style5">
                            <ItemTemplate >
                                <asp:Label ID="lblName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                            </ItemTemplate><ItemStyle CssClass="auto-style5"></ItemStyle>
                            </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Gender" ItemStyle-CssClass="auto-style5">
                            <ItemTemplate>
                                <asp:Label ID="lblGender" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                            </ItemTemplate><ItemStyle CssClass="auto-style5"></ItemStyle>
                            </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Mobile No" ItemStyle-CssClass="auto-style5">
                            <ItemTemplate>
                                <asp:Label ID="lblMobile" runat="server" Text='<%#Bind("MobileNo")%>'></asp:Label>
                            </ItemTemplate><ItemStyle CssClass="auto-style5"></ItemStyle>
                            </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Email_ID" ItemStyle-CssClass="auto-style5">
                            <ItemTemplate>
                                <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("Emailid")%>'></asp:Label>
                            </ItemTemplate><ItemStyle CssClass="auto-style5"></ItemStyle>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="Status" ItemStyle-CssClass="auto-style5">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbtnStatus" runat="server" Font-Underline="false" Text='<%# Bind("UserStatus") %>' CommandName="ChangeStatus" CommandArgument='<%# Bind("LoginID") %>' ToolTip='<%# Bind("UserStatus") %>'></asp:LinkButton>
                            </ItemTemplate>
                         </asp:TemplateField>
                        

                        <asp:TemplateField ItemStyle-CssClass="auto-style5">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbtnEdit" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:LinkButton ID="lbtndelete" runat="server" CommandName="Delete">Delete</asp:LinkButton>&nbsp;
                                <asp:LinkButton ID="lbtncancle" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                            </EditItemTemplate><ItemStyle CssClass="auto-style5"></ItemStyle>
                            </asp:TemplateField>
                    
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#F30C3A" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                    </div>

                <div id="Seller" runat="server" visible="false" class="auto-style5">
                    <br />
                    <span class="auto-style6"><strong>Seller Details</strong><br />
                    </span>
                    <asp:GridView ID="grvSellerDetails" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" OnRowCancelingEdit="grvSellerDetails_RowCancelingEdit" OnRowEditing="grvSellerDetails_RowEditing" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" OnRowDeleting="grvSellerDetails_RowDeleting" Height="179px" OnRowCommand="grvSellerDetails_RowCommand" >
                        <Columns>

                        <asp:TemplateField HeaderText="Seller_Id" ItemStyle-CssClass="auto-style5" Visible="false">
                            <ItemTemplate >
                                <asp:Label ID="lblSID" runat="server" Text='<%# Bind("Seller_Id") %>'></asp:Label>
                            </ItemTemplate><ItemStyle CssClass="auto-style5"></ItemStyle>
                            </asp:TemplateField>

                        <asp:TemplateField HeaderText="Name" ItemStyle-CssClass="auto-style5">
                            <ItemTemplate >
                                <asp:Label ID="lblName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                            </ItemTemplate><ItemStyle CssClass="auto-style5"></ItemStyle>
                        </asp:TemplateField>

                            <asp:TemplateField HeaderText="Gender" ItemStyle-CssClass="auto-style5">
                            <ItemTemplate>
                                <asp:Label ID="lblGender" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                            </ItemTemplate><ItemStyle CssClass="auto-style5"></ItemStyle>
                            </asp:TemplateField>
                       
                        <asp:TemplateField HeaderText="Mobile No" ItemStyle-CssClass="auto-style5">
                            <ItemTemplate>
                                <asp:Label ID="lblMobile" runat="server" Text='<%#Bind("MobileNo")%>'></asp:Label>
                            </ItemTemplate><ItemStyle CssClass="auto-style5"></ItemStyle>
                            </asp:TemplateField>

                        <asp:TemplateField HeaderText="Email_ID" ItemStyle-CssClass="auto-style5">
                            <ItemTemplate>
                                <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("EmailId")%>'></asp:Label>
                            </ItemTemplate><ItemStyle CssClass="auto-style5"></ItemStyle>
                        </asp:TemplateField>

                       <asp:TemplateField HeaderText="Status" ItemStyle-CssClass="auto-style5">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbtnStatus" runat="server" Font-Underline="false" Text='<%# Bind("UserStatus") %>' CommandName="ChangeStatus" CommandArgument='<%# Bind("LoginID") %>' ToolTip='<%# Bind("UserStatus") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField ItemStyle-CssClass="auto-style5">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbtnEdit" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                            </ItemTemplate>

                            <EditItemTemplate>
                                <asp:LinkButton ID="lbtndelete" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                                <asp:LinkButton ID="lbtncancle" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                            </EditItemTemplate><ItemStyle CssClass="auto-style5"></ItemStyle>
                            </asp:TemplateField>

                    </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#F30C3A" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                    <br />
                    <br />
                    <br />
                </div>
                
            </td>
        </tr>
    </table>
</asp:Content>
