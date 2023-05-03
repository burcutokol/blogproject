<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="NewBlog.aspx.cs" Inherits="BlogProject.AdminPages.NewBlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" class="form-group"> 
        <asp:TextBox ID="TextBox1" runat="server" placeholder= "Blog Başlık" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" placeholder= "Blog Tarih" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" placeholder= "Blog Görsel" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" placeholder= "Blog Tür" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox5" runat="server" placeholder= "Blog Kategori" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success" />
    </form>
</asp:Content>
