using BlogProject.Entity;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace BlogProject
{
    public partial class BlogDetails : System.Web.UI.Page
    {
        project_blogEntities db = new project_blogEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            int Blog_Id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            var Blog = db.TBLBLOG.Where(x => x.BLOGID == Blog_Id).ToList();
            BlogDetail.DataSource = Blog;
            BlogDetail.DataBind();

            var Comments = db.TBLYORUM
     .Include("TBLBLOG") // İlgili blogu yükle
     .Where(x => x.KITAPID == Blog_Id)
     .ToList();

            CommentList.DataSource = Comments;

            CommentList.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int Blog_Id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            TBLYORUM t = new TBLYORUM();
           
            if (Session["KULLANICINICK"] != null)
            {
                string kullaniciNick = Session["KULLANICINICK"] as string;
                var User = db.TBLKULLANICI.FirstOrDefault(user => user.KULLANICINICK == kullaniciNick);
                if (User != null)
                {
                    if (Comment.Text != "")
                    {
                        t.KULLANICIID = User.KULLANICIID_;
                        t.KULLANICIAD = kullaniciNick;
                        t.YORUM = Comment.Text;
                        t.KITAPID = Blog_Id;
                        db.TBLYORUM.Add(t); //Db'nin TBLYORUM tablosuna yeni t objesini ekledim.
                        db.SaveChanges();
                        Response.Redirect("BlogDetails.Aspx?BLOGID=" + Blog_Id);
                    }
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
              

        }

        protected void btnLike_Click(object sender, EventArgs e)
        {
            
                int Blog_Id = Convert.ToInt32(Request.QueryString["BLOGID"]);
                if (Session["KULLANICINICK"] != null)
                {
                    string kullaniciNick = Session["KULLANICINICK"] as string;
                    var User = db.TBLKULLANICI.FirstOrDefault(user => user.KULLANICINICK == kullaniciNick);
                    if (User != null)
                    {
                        TBLBLOG blog = db.TBLBLOG.FirstOrDefault(b => b.BLOGID == Blog_Id);
                    bool alreadyLiked = db.TBL_BLOGOKUNAN.Any(x => x.KULLANICI_ID == User.KULLANICIID_ && x.KITAP_ID == blog.BLOGID);
                    TBL_BLOGBEGENI t = new TBL_BLOGBEGENI
                        {
                            KULLANICI_ID = User.KULLANICIID_,
                            TBLBLOG = blog
                        };
                    if(!alreadyLiked)
                    {
                        db.TBL_BLOGBEGENI.Add(t);
                        db.SaveChanges();
                        ClientScript.RegisterStartupScript(this.GetType(), "ModalScript", "$(document).ready(function(){$('#successModal').modal('show'); setTimeout(function() { $('#successModal').modal('hide'); }, 1500);});", true);

                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "ModalScript", "$(document).ready(function(){$('#failModal').modal('show'); setTimeout(function() { $('#failModal').modal('hide'); }, 2000);});", true);
                    }

                }

                }
            
            
        }
        protected void btnRead_Click(object sender, EventArgs e)
        {
            int Blog_Id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            if (Session["KULLANICINICK"] != null)
            {
                string kullaniciNick = Session["KULLANICINICK"] as string;
                var User = db.TBLKULLANICI.FirstOrDefault(user => user.KULLANICINICK == kullaniciNick);
                if (User != null)
                {
                    TBLBLOG blog = db.TBLBLOG.FirstOrDefault(b => b.BLOGID == Blog_Id);
                    bool alreadyRead = db.TBL_BLOGOKUNAN.Any(x => x.KULLANICI_ID == User.KULLANICIID_ && x.KITAP_ID == blog.BLOGID);
                    TBL_BLOGOKUNAN t = new TBL_BLOGOKUNAN
                    {
                        KULLANICI_ID = User.KULLANICIID_,
                        TBLBLOG = blog
                    };
                    if(!alreadyRead)
                    {
                        db.TBL_BLOGOKUNAN.Add(t);
                        db.SaveChanges();
                        ClientScript.RegisterStartupScript(this.GetType(), "ModalScript", "$(document).ready(function(){$('#successModal').modal('show'); setTimeout(function() { $('#successModal').modal('hide'); }, 1500);});", true);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "ModalScript", "$(document).ready(function(){$('#failModal').modal('show'); setTimeout(function() { $('#failModal').modal('hide'); }, 2000);});", true);
                    }
                    

                }

            }
        }
        protected void btnReadingList_Click(object sender, EventArgs e)
        {
            int Blog_Id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            if (Session["KULLANICINICK"] != null)
            {
                string kullaniciNick = Session["KULLANICINICK"] as string;
                var User = db.TBLKULLANICI.FirstOrDefault(user => user.KULLANICINICK == kullaniciNick);
                if (User != null)
                {
                    TBLBLOG blog = db.TBLBLOG.FirstOrDefault(b => b.BLOGID == Blog_Id);
                    bool alreadyRead = db.TBL_BLOGISTEK.Any(x => x.KULLANICI_ID == User.KULLANICIID_ && x.KITAP_ID == blog.BLOGID);
                    TBL_BLOGISTEK t = new TBL_BLOGISTEK
                    {
                        KULLANICI_ID = User.KULLANICIID_,
                        TBLBLOG = blog
                    };
                    if (!alreadyRead)
                    {
                        db.TBL_BLOGISTEK.Add(t);
                        db.SaveChanges();
                        ClientScript.RegisterStartupScript(this.GetType(), "ModalScript", "$(document).ready(function(){$('#successModal').modal('show'); setTimeout(function() { $('#successModal').modal('hide'); }, 1500);});", true);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "ModalScript", "$(document).ready(function(){$('#failModal').modal('show'); setTimeout(function() { $('#failModal').modal('hide'); }, 2000);});", true);
                    }


                }

            }
        }

    }
}