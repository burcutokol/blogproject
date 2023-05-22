<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="DefaultPage.aspx.cs" Inherits="BlogProject.DefaultPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
