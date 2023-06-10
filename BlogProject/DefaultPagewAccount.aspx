<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="DefaultPagewAccount.aspx.cs" Inherits="BlogProject.DefaultPagewAccount" %>
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
						<li class="active"><a href="DefaultPage.aspx">Bloglar</a></li>						
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
    <div class="content">
        <div class="container">
            <div class="content-grids">
                
                <div class="col-md-8">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <div class="content-grid" style="align-content:baseline;">
                                <div class="content-grid-info">
                                    <img src="<%#Eval ("BLOGGORSEL") %> " alt="" style="height: 250px; width: 500px" />
                                    <div class="post-info" style="width: 500px">
                                        <h4><a href="BlogDetails.aspx?BLOGID=<%#Eval("BLOGID")%>"><%#Eval("BLOGBASLIK") %></a> <%#Eval("BLOGTARIH") %></h4>
                                        <p><%#Eval("BLOGICERIK") %>...</p>

                                        <a href="BlogDetails.aspx?BLOGID=<%#Eval("BLOGID")%>"><span></span>Devamını Oku</a>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>
                <div class="col-md-4 content-right">
                    <div class="recent">
                        <h3>SON BLOGLAR</h3>
                        <ul style="padding: inherit;">
                            <asp:Repeater ID="latestblogs" runat="server">
                                <ItemTemplate>
                                    <li><a href="BlogDetails.aspx?BLOGID=<%#Eval("BLOGID")%>"><%#Eval("BLOGBASLIK") %></a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="comments">
                        <h3>SON YORUMLAR</h3>
                        <ul style="padding: inherit;">
                            <asp:Repeater ID="latestcomments" runat="server">
                                <ItemTemplate>
                                    <li><a href="BlogDetails.aspx?BLOGID=<%#Eval("BlogId")%>"><%#Eval("KullanıcıAd") %> -  <%#Eval("Yorum") %>...</a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                            
                            
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                    
                    <div class="categories">
                        <h3>KATEGORİLER</h3>
                        <ul style="padding: inherit;">
                            <asp:Repeater ID="categories" runat="server">
                                <ItemTemplate>
                                    <li><a href="CategoryDetails.aspx?KATEGORIID=<%#Eval("KATEGORIID")%>"><%#Eval("KATEGORIAD") %></a></li>

                                </ItemTemplate>
                            </asp:Repeater>

                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</asp:Content>
