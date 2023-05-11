 <%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateComment.aspx.cs" Inherits="BlogProject.AdminPages.CommentList.UpdateComment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server" class="form-group"> 
        <asp:TextBox ID="TextBox1" runat="server" placeholder= "Blog Başlık" Enabled ="false" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" placeholder= "Kullanıcı Adı" Enabled ="false" CssClass="form-control"></asp:TextBox>
        <br />
         <asp:TextBox ID="TextBox4" runat="server" Height = "100px" TextMode ="MultiLine" placeholder= "Yorum İçerik" CssClass="form-control" ></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="Button1_Click"  />
    </form>

</asp:Content>
