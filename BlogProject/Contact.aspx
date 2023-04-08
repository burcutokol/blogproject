<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="BlogProject.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="contact-content">
	 <div class="container">
		     <div class="contact-info">
			 <h2>İletişim</h2>
			 <p> Herhangi bir sorun veya öneriniz için bize ulaşabilirsiniz.</p>
		     </div>
			 <div class="contact-details">				 
			 <form runat="server">
				 <asp:TextBox ID="NameSurname" runat="server" placeholder="Ad Soyad" required=""></asp:TextBox>
				 <asp:TextBox ID="Mail" runat="server" placeholder="Mail" required=""></asp:TextBox>
				 <asp:TextBox ID="Phone" runat="server" placeholder="Telefon Numarası" required=""></asp:TextBox>
				 <asp:TextBox ID="Topic" runat="server" placeholder="Konu" required=""></asp:TextBox>
				 <asp:TextBox ID="TextBox" runat="server" placeholder="Mesajınız" required="" TextMode="MultiLine" Height="100"></asp:TextBox>
				 <button type="submit" value="GÖNDER"/>
			 </form>
		  </div>
		  <div class="contact-details">
			  <div class="col-md-6 contact-map">
				 <h4>Biz Buradayız.</h4>
				 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3011.3226317250683!2d29.062728715350445!3d40.99631107930204!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14cac7e8ef4926dd%3A0xcd46d65a8527b123!2sIstanbul%20Medeniyet%20%C3%9Cniversitesi%20Kuzey%20Kamp%C3%BCs!5e0!3m2!1str!2str!4v1680641293445!5m2!1str!2str" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				  
			  </div>
			  <div class="col-md-6 company_address">		 
					<h4>GET IN TOUCH</h4>
					<p>500 Lorem Ipsum Dolor Sit,</p>
					<p>22-56-2-9 Sit Amet, Lorem,</p>
					<p>USA</p>
					<p>Phone:(00) 222 666 444</p>
					<p>Fax: (000) 123 456 78 0</p>
					<p>Email: <a href="mailto:info@example.com">info@mycompany.com</a></p>
					<p>Follow on: <a href="#">Facebook</a>, <a href="#">Twitter</a></p>
			 </div>
			  <div class="clearfix"></div>
	     </div>		 


			 </div>
	 </div>
</asp:Content>
