<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="AboutPage.aspx.cs" Inherits="BlogProject.AboutPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="about-content">
	 <div class="container">
		 <h2>Hakkımızda</h2>
		 <div class="about-section">
			 <div class="about-grid">
				 <h3></h3>
				 <asp:Repeater ID="AboutRepeater" runat="server">
					 <ItemTemplate>
						 <p>
							 <%#Eval("ACIKLAMA") %> 
						 </p>
					 </ItemTemplate>
				 </asp:Repeater>
	
			 </div>
				 
		  </div>		 
	  </div>
</div>

	


</asp:Content>
