<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="NewBlog.aspx.cs" Inherits="BlogProject.AdminPages.NewBlog" %>
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
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="Button1_Click1" />
    </form>

    <div id="myModal" class="modal" style="display:none">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Uyarı</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
          <div class="modal-body">
            <p>Eksik veri girişi yapıldı. Lütfen kontrol edin.</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Kapat</button>
          </div>
        </div>
      </div>
</div>

        
</asp:Content>
