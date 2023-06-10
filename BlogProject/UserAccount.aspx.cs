using BlogProject.Entity;
using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogProject
{
    public partial class UserAccount : System.Web.UI.Page
    {
        project_blogEntities db = new project_blogEntities();
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

                    var LikedBlogs = (from bb in db.TBL_BLOGBEGENI
                                      join b in db.TBLBLOG on bb.KITAP_ID equals b.BLOGID
                                      where bb.KULLANICI_ID == User.KULLANICIID_
                                      orderby b.BLOGTARIH descending
                                      select new
                                      {
                                          BlogBaslik = b.BLOGBASLIK,
                                          BlogKategori = b.TBLKATEGORI.KATEGORIAD
                                      }).Take(5).ToList();
                    Repeater1.DataSource = LikedBlogs;
                    Repeater1.DataBind();

                    var ReadBlogs = (from bb in db.TBL_BLOGOKUNAN
                                      join b in db.TBLBLOG on bb.KITAP_ID equals b.BLOGID
                                      where bb.KULLANICI_ID == User.KULLANICIID_
                                      orderby b.BLOGTARIH descending
                                      select new
                                      {
                                          BlogBaslik = b.BLOGBASLIK,
                                          BlogKategori = b.TBLKATEGORI.KATEGORIAD
                                      }).Take(5).ToList();
                    Repeater2.DataSource = ReadBlogs;
                    Repeater2.DataBind();

                }
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string kullaniciNick = Session["KULLANICINICK"] as string;
            var User = db.TBLKULLANICI.FirstOrDefault(user => user.KULLANICINICK == kullaniciNick);
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "")
            {
                if (!int.TryParse(TextBox1.Text, out int kullanıcıad) && !int.TryParse(TextBox2.Text, out int kullanıcısoyad) && !int.TryParse(TextBox4.Text, out int nick))
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
        protected void Button2_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            RepeaterItem item = (RepeaterItem)button.NamingContainer;



            string blogBaslik = ((Label)item.FindControl("Label1")).Text;
            string blogKategori = ((Label)item.FindControl("Label2")).Text;


            var blog = db.TBL_BLOGBEGENI.FirstOrDefault(b => b.TBLBLOG.BLOGBASLIK == blogBaslik);

            if (blog != null)
            {
                db.TBL_BLOGBEGENI.Remove(blog);
                db.SaveChanges();
            }
            Response.Redirect("UserAccount.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            RepeaterItem item = (RepeaterItem)button.NamingContainer; 



            string blogBaslik = ((Label)item.FindControl("Label1")).Text;
            string blogKategori = ((Label)item.FindControl("Label2")).Text;


            var blog = db.TBL_BLOGOKUNAN.FirstOrDefault(b => b.TBLBLOG.BLOGBASLIK == blogBaslik);

            if (blog != null)
            {
                db.TBL_BLOGOKUNAN.Remove(blog);
                db.SaveChanges();
            }
            Response.Redirect("UserAccount.aspx");
        }

        protected void btnQuit_Click(object sender, EventArgs e)
        {
            if (Session["KULLANICINICK"] != null)
            {
                // Oturumu sonlandır
                Session.Clear();
                Session.Abandon();

                // Varsayılan sayfaya yönlendir
                Response.Redirect("DefaultPage.aspx");
            }
                
        }
    }
}