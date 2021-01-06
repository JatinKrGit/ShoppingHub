<%@ Page Title="" Language="C#" MasterPageFile="~/Seller.Master" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="OnlineShoppingManagement.ViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
            height: 525px;
        }
        .auto-style9 {
            font-size: large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style8">
        <tr>
            <td style="vertical-align: top; text-align: center">
                <br />
                <strong><span class="auto-style9">VIEW PRODUCT</span></strong><br />
                <br />
                <br />
                            <asp:GridView ID="grvViewProduct" runat="server" AutoGenerateColumns="False" Height="155px" Width="1326px" OnRowCancelingEdit="grvViewProduct_RowCancelingEdit" OnRowDeleting="grvViewProduct_RowDeleting" OnRowEditing="grvViewProduct_RowEditing" CellPadding="3" OnRowUpdating="grvViewProduct_RowUpdating" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" EmptyDataText="You Have No Products ! Please Add Your Products"  >
                                <Columns>
                                    <asp:TemplateField HeaderText="Product_Id" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="lblPID" runat="server" Text='<%#Bind("Product_Id") %>'></asp:Label>
                                        </ItemTemplate>

                                    </asp:TemplateField >
                                    
                                    <asp:TemplateField HeaderText="Product_Image">
                                        <ItemTemplate>
                                            <asp:Image ID="Productimg" runat="server" Height="110px" Width="60px" ImageUrl='<%# Bind("ProductImageURL") %>' />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:FileUpload ID="FupImage" runat="server" AllowMultiple="True" />
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Product_Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lblName" runat="server" Text='<%#Bind("ProductName") %>' ></asp:Label>
                                            <asp:Label ID="lblSubName" runat="server" Text='<%#Bind("SubName") %>' ></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtName" runat="server" Text='<%#Bind("ProductName") %>'></asp:TextBox>
                                            <asp:TextBox ID="txtSubName" runat="server" Text='<%#Bind("SubName") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Product_Price">
                                        <ItemTemplate>
                                            <asp:Label ID="lblPrice" runat="server" Text='<%#Bind("ProductPrice") %>'></asp:Label>
                                        </ItemTemplate>
                                         <EditItemTemplate>
                                            <asp:TextBox ID="txtPrice" runat="server" Text='<%#Bind("ProductPrice") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Product_Description">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDescription" runat="server" Text='<%#Bind("ProductDescription") %>'></asp:Label>
                                        </ItemTemplate>
                                         <EditItemTemplate>
                                            <asp:TextBox ID="txtDescription" runat="server" Height="100%" Width="100%" TextMode="MultiLine" Text='<%#Bind("ProductDescription") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Product_Categort">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCategory" runat="server" AutoPostBack="True" Text='<%#Bind("ProductCategory") %>'></asp:Label>
                                        </ItemTemplate>
                                         <EditItemTemplate>
                                             <asp:DropDownList ID="ddlCategory_Edit" runat="server" DataTextField='<%Bind("ProductCategory") %>'>
                                                 <asp:ListItem Text="Select Category"></asp:ListItem>
                                                 <asp:ListItem Text="Appliances"></asp:ListItem>
                                                 <asp:ListItem Text="Baby&Kids"></asp:ListItem>
                                                 <asp:ListItem Text="Electronics"></asp:ListItem>
                                                 <asp:ListItem Text="Men"></asp:ListItem>
                                                 <asp:ListItem Text="Women"></asp:ListItem>
                                             </asp:DropDownList>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="">
                                        <ItemTemplate>
                                             <asp:LinkButton ID="lbtnModify" runat="server" CommandName="Edit">Modify</asp:LinkButton>
                                            <asp:LinkButton ID="lbtnDelete" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                                        </ItemTemplate>
                                       <EditItemTemplate>
                                             <asp:LinkButton ID="lbtnUpdate" runat="server" CommandName="Update">Update</asp:LinkButton>
                                             <asp:LinkButton ID="lbtnCancle" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                                       </EditItemTemplate>
                
                                   </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                            </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
