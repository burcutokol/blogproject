<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BlogProject.Login" %>


<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Giriş Yap </title>
      <link rel="shortcut icon" href="web/images/favicon.ico" type="image/x-icon">
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <meta name="keywords" content="Gaze Sign up & login Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design"
         />
      <script>
         addEventListener("load", function () { setTimeout(hideURLbar, 0); }, false); function hideURLbar() { window.scrollTo(0, 1); }
      </script>
       <script>
         
           window.onload = function () {
             
               var popupButtons = document.getElementsByClassName("popup-button");

               
               for (var i = 0; i < popupButtons.length; i++) {
                  
                   popupButtons[i].addEventListener("click", function (event) {
                     
                       event.preventDefault();
                    
                       openPopup();
                   });
               }

               // Popup'ı açan fonksiyon
               function openPopup() {
                   $(".popup-effect").fadeIn();
               }
               function closePopup() {
                   document.getElementById('content1').classList.remove('active');
                   return false; 
           };
       </script>

      

      <!-- Meta tags -->
      <!--stylesheets-->
       <link href="web2/css/bootstrap.css" rel='stylesheet' type='text/css' media="all">
      <link href="web2/css/style.css" rel='stylesheet' type='text/css' media="all">
       
      <!--//style sheet end here-->
      <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700" rel="stylesheet">
   </head>
   <body>
      
      <div class="mid-class">
         <div class="art-right-w3ls">
            <h2>Giriş Yap</h2>
             <form id="form1" runat="server">
   <div class="main">
      <div class="form-left-to-w3l">
         <asp:TextBox ID="userName" runat="server" placeholder="Kullanıcı Adı"></asp:TextBox>
      </div>
      <div class="form-left-to-w3l">
         <asp:TextBox ID="password" TextMode="Password" runat="server" placeholder="Şifre"></asp:TextBox>
         <div class="clear"></div>
      </div>
   </div>
   <div class="right-side-forget">
      <a href="#" class="for">Şifremi Unuttum</a>
   </div>
   <div class="clear"></div>
   <div class="btnn">
      <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary submit" Text="Giriş Yap" OnClick="Button1_Click" UseSubmitBehavior=false />
   </div>
                 <row class="row">
                     <asp:Label ID="Label1" runat="server" Color="antiquewhite;" BorderColor="White" BorderStyle="Solid" BorderWidth="3px" ForeColor="White"></asp:Label>
                 </row>

   <div class="w3layouts_more-buttn">
      <h3>Hesabınız Yok Mu?
         <a href="#content1">Üye Ol</a>
      </h3>
   </div>

   <!-- Popup -->
   <!-- popup form -->
<div id="content1" class="popup-effect">
   <div class="popup">
      <!--login form-->
      <div class="letter-w3ls">
         <form onsubmit="return false;">
            <div class="form-left-to-w3l">
               <asp:TextBox ID="nameSignUp" runat="server" placeholder="Kullanıcı Adı" required=""></asp:TextBox>
            </div>
            <div class="form-left-to-w3l">
               <asp:TextBox ID="TextBox1" runat="server" TextMode="Email" placeholder="Mail" required=""></asp:TextBox>
            </div>
            <div class="form-left-to-w3l">
               <asp:TextBox ID="passwordSignUp" TextMode="Password" placeholder="Şifre" required="" runat="server"></asp:TextBox>
            </div>
            <div class="form-left-to-w3l margin-zero">
               <asp:TextBox ID="passwordSignUp2" TextMode="Password" placeholder="Şifre Tekrar" required="" runat="server"></asp:TextBox>
            </div>
            <div class="btn">
               <asp:Button ID="btnSignUp" runat="server" Text="Üye Ol" OnClick="btnSignUpClick" OnClientClick="return closePopup();" AutoPostBack="false"  />
               <br>
            </div>
            <div class="clear"></div>
             <asp:Label ID="Label2" runat="server" Visible="false" Text="" ForeColor="Red"></asp:Label>
         </form>
      </div>
      <!--//login form-->
      <a class="close" href="#">&times;</a>
   </div>
</div>

   <!-- // Popup -->
</form>

            
         </div>
         <div class="art-left-w3ls">
            <h1 class="header-w3ls">
                <div class="container" style="width:fit-content">
		  <div class="logo">
			  <a href="DefaultPage.aspx"><img src="web/images/okuyalım.combw.png" title="" style ="width:200px; height:170px"/></a>
		  </div>			
	 </div>
            </h1>
         </div>
      </div>
      <footer class="bottem-wthree-footer">
       
      </footer>
   </body>
</html>