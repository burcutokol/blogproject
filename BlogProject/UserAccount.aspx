﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserAccount.aspx.cs" Inherits="BlogProject.UserAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headercontent" runat="server">
    <div class="custom-header">  
	 <div class="container">
		  <div class="logo">
			  <a href="DefaultPagewAccount.aspx"><img src="web/images/okuyalım.com.png" title="" style ="width:200px; height:170px"/></a>
		  </div>
			 <!---start-top-nav---->
			 <div class="top-menu row" style="margin-top: 3.5em; float: right;">
				 <div class="search">
					 <form class="col-md-6">
					 <input type="text" placeholder="" required="">
					 <input type="submit" value=""/>
					 </form>
					 <div class="col-md-6">
					   <a href="UserAccount.aspx" style="text-decoration: none !important;">
							<i class="bi bi-person-fill bi-lg" style="font-size: x-large; color: #4a5054; font-style: inherit;">Hesabım</i>
						</a>
				  </div>
				 </div>
				 
				  <div class="menu"> </div> 
				   <ul class="d-flex align-items-center" style="justify-content: center;">
                        <li class="active"><a href="ReadingList.aspx">Okuma Listem</a></li>
						<li class="active"><a href="DefaultPagewAccount.aspx">Bloglar</a></li>						
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
<div class="container rounded bg-white mt-5">
        <div class="row content">
            <div class="col-md-12">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <div class="d-flex flex-row align-items-center back"><i class="fa fa-long-arrow-left mr-1 mb-1"></i>
                            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="true"></asp:Label>
                        </div>
                        <h6 class="text-right">Profili Düzenle</h6>
                    </div>
                    <form runat="server" class="form-group">
						<div class="row mt-2">
                        <div class="col-md-6">
                            <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="İsim" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Soyisim" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6">
                            <asp:TextBox ID="TextBox3" CssClass="form-control" placeholder="Mail" runat="server" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="TextBox4" CssClass="form-control" placeholder="Kullanıcı Adı" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-8">
                            <asp:TextBox ID="TextBox5" CssClass="form-control" placeholder="Şifre" TextMode="Password" runat="server"></asp:TextBox>
                        </div>
                    </div>
                   
                    <div class="mt-5 text-right">
                        <asp:Button ID="Button1" runat="server" Text="Değişiklikleri Kaydet" CssClass="btn btn-primary profile-button" OnClick="Button1_Click"/>
                       <asp:Button ID="btnQuit" runat="server" Text="Çıkış Yap" CssClass="btn btn-danger profile-button" OnClick="btnQuit_Click" />

                    </div>
                        

                        <div class="container rounded bg-white mt-5">
        <div class="row">
            <div class="container py-5 h-100">
  <div class="row d-flex justify-content-center align-items-center h-100">
    <div class="col-md-6">
      <div class="card rounded-3">
        <div class="card-body p-4">

          <h4 class="text-center my-3 pb-3">Okuduğum Kitaplar</h4>

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

        </div>
      </div>
    </div>
       <div class="col-md-6">
           <div class="card rounded-3">
        <div class="card-body p-4">

          <h4 class="text-center my-3 pb-3">Beğendiğim Kitaplar</h4>

         

    <asp:Repeater ID="Repeater1" runat="server">
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
                <asp:Button ID="Button2" runat="server" Text="Kitabı Çıkar" class="btn btn-danger" OnClick="Button2_Click" />
            </td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
            </tbody>
        </table>
    </FooterTemplate>
</asp:Repeater>



          

        </div>
      </div>
       </div>
                   

        </div> 
  </div>
</div>

           
    </div>
                    </form>
                    
                </div>
            </div>
        </div>
    </div>
    


    <div id="errorModal" class="modal" >
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Uyarı</h4>
            <button type="button" class="close justify-content-between" data-dismiss="modal">&times;</button>
          </div>
          <div class="modal-body">
            <p>Eksik veri girişi yapıldı. Lütfen kontrol edin.</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Kapat</button>
          </div>
        </div>
      </div>
</div>
    <div id="successModal" class="modal">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Kaydedildi</h4>
          </div>
          <div class="modal-body">
            <p class="text-center">Değişiklikler başarıyla kaydedildi.</p>
          </div>
          
        </div>
      </div>
</div>



</asp:Content>






