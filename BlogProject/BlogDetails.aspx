﻿<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="BlogDetails.aspx.cs" Inherits="BlogProject.BlogDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
    <!DOCTYPE HTML>
    <html>
    <head>
        <link href="web/css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="web/css/style.css" rel='stylesheet' type='text/css' />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Personal Blog Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!----webfonts---->
        <link href='http://fonts.googleapis.com/css?family=Oswald:100,400,300,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,300italic' rel='stylesheet' type='text/css'>
        <!----//webfonts---->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <!--end slider -->
        <!--script-->
        <script type="text/javascript" src="web/js/move-top.js"></script>
        <script type="text/javascript" src="web/js/easing.js"></script>
        <!--/script-->
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 900);
                });
            });
        </script>
        <!---->

    </head>
    <body>
        <div class="single">
            <div class="container">
                <div class="col-md-8 single-main">
                    <form runat="server">  
                        <div class="single-grid">
                        <asp:Repeater ID="BlogDetail" runat="server">
                            <ItemTemplate>
                                <div class="row">
                                    <div class="col-md-8">
                                    <img src="<%#Eval ("BLOGGORSEL") %> " alt="" style="height: 400px; width: 300px; margin-bottom: 20px" />

                                    </div>
                                    <div class="col-md-4">
                                        <div class="row">
                                    <div class="col-md-12 mt-2">
                                        <asp:Button ID="btnRead" runat="server" Text="Bu Kitabı Okudum" class="btn btn-info btn-block" OnClick="btnRead_Click" />
                                      
                                     </div>
                                    <div class="col-md-12 mt-2">
                                        <asp:Button ID="btnLike" runat="server" Text="Bu Kitabı Beğendim" class="btn btn-success btn-block" OnClick="btnLike_Click" />
                                     </div>
                                            <div class="col-md-12 mt-2">
                                        <asp:Button ID="btnReadingList" runat="server" Text="Okuma Listeme Ekle" class="btn btn-primary btn-block" OnClick="btnReadingList_Click" />
                                     </div>
                                </div>
                                    </div>
                                </div>
                                
                                <h3><%#Eval("BLOGBASLIK")%></h3>
                                <p>
                                    <%#Eval("BLOGICERIK") %>
                                </p>
                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
                    <asp:Repeater ID="CommentList" runat="server">

                        <ItemTemplate>
                            <ul class="comment-list">
                                <li>
                                    <img src="web/images/avatar.png" class="img-responsive" alt="">
                                    <div class="desc">
                                        <p style="font-weight : bolder"><%#Eval("KULLANICIAD") %> </p> : <p> <%#Eval("YORUM") %>  </p>
                                    </div>
                                    <div class="clearfix"></div>
                                </li>
                            </ul>

                            

                        </ItemTemplate>
                    </asp:Repeater>

                    <div class="content-form">
                        <h3>Bir Yorum Yazın.</h3>


                            <asp:TextBox ID="Comment" runat="server" TextMode="MultiLine" Height="100px" Width="99%" placeholder="Yorumunuz"></asp:TextBox>

                            <asp:Button ID="btnSave" runat="server" Text="Yorum Yap" OnClick="Button1_Click" />
                            

                    </div>
                    </form>
                    
                </div>


                <div class="clearfix"></div>
            </div>
        </div>
    </body>
    </html>
      <div id="successModal" class="modal">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Kaydedildi</h4>
          </div>
          <div class="modal-body">
            <p class="text-center">Listeye eklendi.</p>
          </div>
          
        </div>
      </div>
</div>
      <div id="failModal" class="modal">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Kitap Ekli</h4>
          </div>
          <div class="modal-body">
            <p class="text-center">Kitap zaten listenizde.</p>
          </div>
          
        </div>
      </div>
</div>
    <!---->
</asp:Content>
