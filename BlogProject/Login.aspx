﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BlogProject.Login" %>


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
            <form action="#" method="post" runat="server">
               <div class="main">
                  <div class="form-left-to-w3l">
                      <asp:TextBox ID="userName" runat="server" placeholder="Kullanıcı Adı"></asp:TextBox>
                  </div>
                  <div class="form-left-to-w3l ">
                     <asp:TextBox ID="password" TextMode="Password" runat="server" placeholder="Şifre"></asp:TextBox>
                     <div class="clear"></div>
                  </div>
               </div>
               <div class="left-side-forget">
                  <input type="checkbox" class="checked">
                  <span class="remenber-me">Beni Hatırla </span>
               </div>
               <div class="right-side-forget">
                  <a href="#" class="for">Şifremi Unuttum</a>
               </div>
               <div class="clear"></div>
               <div class="btnn">
                   <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary submit" Text="Giriş Yap" OnClick="Button1_Click" />
                 
               </div>
            </form>
            <div class="w3layouts_more-buttn">
               <h3>Hesabınız Yok Mu?
                  <a href="#content1">Üye Ol
                  </a>
               </h3>
            </div>
            <!-- popup-->
            <div id="content1" class="popup-effect">
               <div class="popup">
                  <!--login form-->
                  <div class="letter-w3ls">
                     <form action="#" method="post">
                        <div class="form-left-to-w3l">
                           <input type="text" name="name" placeholder="Username" required="">
                        </div>
                        <div class="form-left-to-w3l">
                           <input type="text" name="name" placeholder="Phone" required="">
                        </div>
                        <div class="form-left-to-w3l">
                           <input type="email" name="email" placeholder="Email" required="">
                        </div>
                        <div class="form-left-to-w3l">
                           <input type="password" name="password" placeholder="Password" required="">
                        </div>
                        <div class="form-left-to-w3l margin-zero">
                           <input type="password" name="password" placeholder="Confirm Password" required="">
                        </div>
                        <div class="btnn">
                           <button type="submit">Sign Up</button>
                           <br>
                        </div>
                     </form>
                     <div class="clear"></div>
                  </div>
                  <!--//login form-->
                  <a class="close" href="#">&times;</a>
               </div>
            </div>
            <!-- //popup -->
         </div>
         <div class="art-left-w3ls">
            <h1 class="header-w3ls">
               okuyalım.com
               <p>Giriş Yap ve Üye Ol</p>
            </h1>
         </div>
      </div>
      <footer class="bottem-wthree-footer">
       
      </footer>
   </body>
</html>