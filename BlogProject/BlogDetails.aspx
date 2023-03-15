<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="BlogDetails.aspx.cs" Inherits="BlogProject.BlogDetails" %>

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
                    <div class="single-grid">
                        <asp:Repeater ID="BlogDetail" runat="server">
                            <ItemTemplate>
                                <img src="<%#Eval ("BLOGGORSEL") %> " alt="" style="height: 400px; width: 300px; margin-bottom:20px" />
                                <h3><%#Eval("BLOGBASLIK")%></h3>
                                <p>
                                    <%#Eval("BLOGICERIK") %>
                                </p>
                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
                    <ul class="comment-list">
                        <h5 class="post-author_head">Written by <a href="#" title="Posts by admin" rel="author">admin</a></h5>
                        <li>
                            <img src="web/images/avatar.png" class="img-responsive" alt="">
                            <div class="desc">
                                <p>View all posts by: <a href="#" title="Posts by admin" rel="author">admin</a></p>
                            </div>
                            <div class="clearfix"></div>
                        </li>
                    </ul>
                    <div class="content-form">
                        <h3>Leave a comment</h3>
                        <form>
                            <input type="text" placeholder="Name" required />
                            <input type="text" placeholder="Email" required />
                            <input type="text" placeholder="Phone" required />
                            <textarea placeholder="Message"></textarea>
                            <input type="submit" value="SEND" />
                        </form>
                    </div>
                </div>


                <div class="clearfix"></div>
            </div>
        </div>
    </body>
    </html>
    <!---->
</asp:Content>
