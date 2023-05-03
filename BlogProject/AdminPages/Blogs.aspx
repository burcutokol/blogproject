<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Blogs.aspx.cs" Inherits="BlogProject.AdminPages.Blogs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered">
        <tr>
            <th>
                ID
            </th>
            <th>
                BASLIK
            </th>
            <th>
                TARIH
            </th>
            <th>
                TUR
            </th>
            <th>
                KATEGORI
            </th>
             <th>
                SIL
            </th>
             <th>
                GUNCELLE
            </th>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td> <%#Eval("BLOGID") %></td>
                        <td> <%#Eval("BLOGBASLIK") %> </td>
                        <td><%#Eval("BLOGTARIH") %></td>
                        <td><%#Eval("BLOGTURID") %></td>
                        <td><%#Eval("BLOGKATEGORİ") %></td>
                        <td><a href ="#" class ="btn btn-danger">Sil</a></td>
                        <td><a href ="#" class ="btn btn-warning">Güncelle</a></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tr>
    </table>
    <a href ="NewBlog.aspx" class ="btn btn-primary">Yeni Blog Ekle</a>
</asp:Content>
