<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="BlogProject.AdminPages.CommentList.Comments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered">
        <tr>
            <th>
                ID
            </th>
            <th>
                KULLANICI
            </th>
            <th>
                BLOG
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
                        <td> <%#Eval("YORUMID") %></td>
                        <td> <%#Eval("KULLANICIAD") %> </td>
                        <td><%#Eval("BLOGBASLIK") %></td> 
                        <td><%#Eval("YORUM") %></td> 

                        <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"DeleteComment.aspx?YORUMID=" + Eval("YORUMID") %>' CssClass="btn btn-danger" OnClick="deleteButton_Click">Sil</asp:HyperLink></td>
                        <td><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"UpdateComment.aspx?YORUMID=" + Eval("YORUMID") %>' CssClass="btn btn-warning" OnClick="updateButton_Click">Güncelle</asp:HyperLink></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tr>
    </table>

</asp:Content>
