<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ReadingList.aspx.cs" Inherits="BlogProject.ReadingList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headercontent" runat="server">
    <div class="custom-header">  
	 <div class="container">
		  <div class="logo">
			  <asp:DynamicHyperLink ID="logoLink" runat="server" ImageUrl="web/images/okuyalım.com.png" title="" style="width:200px; height:170px"></asp:DynamicHyperLink>

		  </div>
			 <!---start-top-nav---->
			 <div class="top-menu row" style="margin-top: 3.5em; float: right;">
				 <div class="search">
					 <form class="col-md-6">
					 <input type="text" placeholder="" required="">
					 <input type="submit" value=""/>
					 </form>
					 <div class="col-md-6">
					   <asp:DynamicHyperLink ID="userLogin" runat="server" CssClass="no-underline">
							 <i class="bi bi-person-fill bi-lg" style="font-size: x-large; color: #4a5054; font-style: inherit;">
								 <asp:Label ID="Label1" runat="server" Text="Label" Font-Underline="false"></asp:Label></i>
						 </asp:DynamicHyperLink>
				  </div>
				 </div>
				 
				  <div class="menu"> </div> 
				   <ul class="d-flex align-items-center" style="justify-content: center;">
                       <li class="active"><a href="ReadingList.aspx">Okuma Listem</a></li>
						<li class="active"><a href="Default.aspx">Bloglar</a></li>						
						<li><a href="AboutPage.aspx">Hakkımızda</a></li>	
						<li><a href="Contact.aspx">İletişim</a></li>						
				 </ul>
			 </div>
			 <div class="clearfix"></div>
					<script>
                        $("span.menu").click(function () {
                            $(".top-menu ul").slideToggle("slow", function () {
                            });
                        });
                    </script>
				<!---//End-top-nav---->					
	 </div>
</div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div class="row">
            <div class="container py-5 h-100">
  <div class="row d-flex justify-content-center align-items-center h-100">
    <div class="col-md-12">
      <div class="card rounded-3">
        <div class="card-body p-4">

			<h4 class="text-center my-3 pb-3">Okuduğum Kitaplar</h4>
    <form runat="server">
		<asp:Repeater ID="Repeater2" runat="server">
    <HeaderTemplate>
        <table class="table mb-3">
            <thead>
                <tr>
                    <th scope="col">Kitap İsmi</th>
                    <th scope="col">Yazar</th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <tbody>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("BlogBaslik") %>'></asp:Label></td>
            <td><asp:Label ID="Label2" runat="server" Text='<%# Eval("BlogKategori") %>'></asp:Label></td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Kitabı Çıkar" class="btn btn-danger" OnClick="Button3_Click" />
            </td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
            </tbody>
        </table>
    </FooterTemplate>
</asp:Repeater>
    </form>



            </div>
          </div>
        </div>
      </div>
                </div>
         </div>



       
          
</asp:Content>
