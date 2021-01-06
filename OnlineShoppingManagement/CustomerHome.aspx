 <%@ Page Title="Online Shopping Hub" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerHome.aspx.cs" Inherits="OnlineShoppingManagement.CustomerHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div >
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
		

			
			<div class="carousel-inner">
				<div class="item " >
                    <img src="images/Fashions.jpg"  style="width:100%; height:400px; "/>
                    <div class="carousel-caption d-none d-md-block">
                          
                    </div>
				</div>

				<div class="item active">
				<img src="images/Fashion.jpg" style="width:100%; height:400px;"/>
				</div>
    

                <div class="item">
				<a href="ViewProductdetails.aspx?PID=102"><img src="images/Realme 6,6 pro.jpg" style="width:100%; height:400px;"/></a>
				</div>

                <div class="item ">
				<img src="images/BoatEarPhone.jpg" style="width:100%; height:400px;"/>
				</div>

                <div class="item ">
				<img src="images/D.jpg" style="width:104%; height:395px;"/>
				</div>
			</div>

			
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span>
			<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right"></span>
			<span class="sr-only">Next</span>
			</a>
		   
            
		</div>
	</div>

     <br />
            <table >
                <tr>
                    <td>
                        <asp:DataList ID="dlProductList" runat="server" RepeatColumns="4"  RepeatDirection="Vertical" Width="1260px" OnItemCommand="DataList1_ItemCommand" >
                            <ItemTemplate><br />
                                <table style="margin-left:120px">
                                 <tr>
                                     <td>
                                         <table class="auto-style11">
        <tr>
            <td style="vertical-align: top; text-align: center;">
                <asp:Image ID="Image1" runat="server"  ImageUrl='<%# Bind("ProductImageURL") %>' Height="200px" Width="101px" />
                <br />
                <asp:Label ID="lblPid" runat="server" Visible="false" Text='<%# Bind("Product_Id") %>' ></asp:Label>
                <asp:LinkButton ID="lbtnProductName" runat="server" Text='<%# Bind("ProductName") %>' ForeColor="Black"  CommandName="Price"></asp:LinkButton>
                <br />
                <asp:LinkButton ID="lbtnPrice" runat="server"  Text='<%# Bind("ProductPrice") %>' ForeColor="Black" CommandName="Price"></asp:LinkButton>
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
