<%@ Page Title="" Language="C#" MasterPageFile="~/Seller.Master" AutoEventWireup="true" CodeBehind="ViewComplaintFeedBack.aspx.cs" Inherits="OnlineShoppingManagement.ViewComplaintFeedBack" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
            height: 404px;
        }
        .auto-style9 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
   <h2 class="auto-style9"> View FeedBack</h2><table class="auto-style8">
        <tr>
            <td style="vertical-align: top">
                <br />
                <asp:GridView ID="grvFeedBackComplaint" runat="server" Width="100%" AutoGenerateColumns="False" style="text-align: center" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                     <Columns>
                                    <asp:TemplateField HeaderText="FeedBack_ID" >
                                        <ItemTemplate>
                                            <asp:Label ID="lblCmpFdID" runat="server" Text='<%#Bind("Cmplt_Fdbk_Id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField >

                                    <asp:TemplateField HeaderText="Message">
                                        <ItemTemplate>
                                            <asp:Label ID="lblMsg" runat="server" Text='<%#Bind("Cmplt_FdbkMsg") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="User Email_Id">
                                        <ItemTemplate>
                                            <asp:Label ID="lblUID" runat="server" Text='<%#Bind("EmailId") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDate" runat="server" Text='<%#Bind("DateTime") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Rsponse">
                                        <ItemTemplate>
                                            <asp:Label ID="lblResponse" runat="server" Text='<%#Bind("Response") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtResponse" runat="server" Text='<%#Bind("Response") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="">
                                        <ItemTemplate>
                                             <asp:LinkButton ID="lbtnResponse" runat="server" CommandName="Edit">Response</asp:LinkButton>
                                        </ItemTemplate>
                                       <EditItemTemplate>
                                             <asp:LinkButton ID="lbtnSend" runat="server" CommandName="Update">Send</asp:LinkButton>
                                             <asp:LinkButton ID="lbtnCancle" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                                       </EditItemTemplate>
                
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
            </td>
        </tr>
    </table>
</asp:Content>
