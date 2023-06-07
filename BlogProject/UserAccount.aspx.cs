using BlogProject.Entity;
using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogProject
{
    public partial class UserAccount : System.Web.UI.Page
    {
        project_blogEntities1 db = new project_blogEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                if (Session["KULLANICINICK"] == null)
                {
                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    string kullaniciNick = Session["KULLANICINICK"] as string;
                    Label1.Text = "Hoşgeldiniz " + kullaniciNick;
                    var User = db.TBLKULLANICI.FirstOrDefault(user => user.KULLANICINICK == kullaniciNick);
                    TextBox1.Text = User.KULLANICIAD.ToString();
                    TextBox2.Text = User.KULLANICISOYAD.ToString();
                    TextBox3.Text = User.KULLANICIMAIL.ToString();
                    TextBox4.Text = User.KULLANICINICK.ToString();
                    TextBox5.Attributes["value"] = User.KULLANICISIFRE.ToString();

                }
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string kullaniciNick = Session["KULLANICINICK"] as string;
            var User = db.TBLKULLANICI.FirstOrDefault(user => user.KULLANICINICK == kullaniciNick);
            if (TextBox1.Text != "" && TextBox2.Text !="" && TextBox3.Text!="" && TextBox4.Text!="" && TextBox5.Text!="")
            {
                if(!int.TryParse(TextBox1.Text, out int kullanıcıad) && !int.TryParse(TextBox2.Text, out int kullanıcısoyad) && !int.TryParse(TextBox4.Text, out int nick))
                {
                    User.KULLANICIAD = TextBox1.Text;
                    User.KULLANICISOYAD = TextBox2.Text;    
                    User.KULLANICINICK = TextBox4.Text;
                    User.KULLANICISIFRE = TextBox5.Text;
                    ClientScript.RegisterStartupScript(this.GetType(), "ModalScript", "$(document).ready(function(){$('#successModal').modal('show'); setTimeout(function() { $('#successModal').modal('hide'); }, 1500);});", true);
                    db.SaveChanges();
                    
                    //Response.Redirect("UserAccount.aspx");


                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "ModalScript", "$(document).ready(function(){$('#errorModal').modal('show');});", true);
            }
        }
    }
}