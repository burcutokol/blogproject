<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateBlog.aspx.cs" Inherits="BlogProject.AdminPages.UpdateBlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server" class="form-group"> 
        <asp:TextBox ID="TextBox1" runat="server" placeholder= "Blog Başlık" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" placeholder= "Blog Tarih" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" placeholder= "Blog Görsel" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control"></asp:DropDownList>
        <br />
         <asp:TextBox ID="TextBox4" runat="server" Height = "100px" TextMode ="MultiLine" placeholder= "Blog İçerik" CssClass="form-control" ></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="Button1_Click" />
    </form>

</asp:Content>
