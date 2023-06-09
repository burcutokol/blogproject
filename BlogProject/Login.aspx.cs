using BlogProject.Entity;
using System;
using System.Linq;

namespace BlogProject
{
    public partial class Login : System.Web.UI.Page
    {
        project_blogEntities db = new project_blogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            
              if(userName.Text == String.Empty)
            {
                Label1.Visible = false;
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            var userQuery = from x in db.TBLKULLANICI
                            where x.KULLANICINICK == userName.Text
                            && x.KULLANICISIFRE == password.Text
                            select x;
            if (userQuery.Any())
            {
                Session.Add("KULLANICINICK", userName.Text); //Yönlenen sayfada kontrol et

                if (userName.Text == "SUPERVISOR")
                {
                    Session.Add("KULLANICINICK", userName.Text);
                    Response.Redirect("/AdminPages/Blogs/Blogs.aspx");
                }
                else
                {
                    Session.Add("KULLANICINICK", userName.Text);
                    Response.Redirect("DefaultPagewAccount.aspx");
                }
            }
            else
            {
                Label1.Text = "Kullanıcı adı veya şifre hatalı.";
                Label1.Visible = true; 


            }
        }


        protected void btnSignUpClick(object sender, EventArgs e)
        {
            string kullaniciAdi = nameSignUp.Text;
            string email = TextBox1.Text;
            string sifre = passwordSignUp.Text;
            string sifreTekrar = passwordSignUp2.Text;

            
            if (db.TBLKULLANICI.Any(x => x.KULLANICINICK == kullaniciAdi))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "PopupScript", "openPopup();", true);
                Label2.Text = "Bu kullanıcı adı zaten kullanımda.";
                Label2.Visible = true;
            }
            else if (string.IsNullOrWhiteSpace(kullaniciAdi) || string.IsNullOrWhiteSpace(email) || string.IsNullOrWhiteSpace(sifre) || string.IsNullOrWhiteSpace(sifreTekrar))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "PopupScript", "openPopup();", true);
                Label2.Text = "Lütfen tüm alanları doldurun.";
                Label2  .Visible = true;
            }
            else if (sifre != sifreTekrar)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "PopupScript", "openPopup();", true);
                Label2.Text = "Şifreler eşleşmiyor.";
                Label2.Visible = true;
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ClosePopupScript", "closePopup();", true);

                TBLKULLANICI kullanici = new TBLKULLANICI()
                {
                    KULLANICINICK = kullaniciAdi,
                    KULLANICIMAIL = email,
                    KULLANICISIFRE = sifre
                };

                db.TBLKULLANICI.Add(kullanici);
                db.SaveChanges();

               
                Label2.Text = "Kayıt başarıyla tamamlandı.";
                Label2.Visible = true;

            }
        }//burda



    }
}