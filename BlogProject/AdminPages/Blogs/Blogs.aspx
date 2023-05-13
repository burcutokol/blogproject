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

                        <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"DeleteBlog.aspx?BLOGID=" + Eval("BLOGID") %>' CssClass="btn btn-danger" OnClick="deleteButton_Click">Sil</asp:HyperLink></td>
                        <td><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"UpdateBlog.aspx?BLOGID=" + Eval("BLOGID") %>' CssClass="btn btn-warning" OnClick="updateButton_Click">Güncelle</asp:HyperLink></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tr>
    </table>
    <a href ="/AdminPages/Blogs/NewBlog.aspx/" class ="btn btn-primary">Yeni Blog Ekle</a>
    
</asp:Content>
