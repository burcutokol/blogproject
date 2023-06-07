using BlogProject.Entity;
using System;
using System.Linq;
using System.Reflection.Emit;
using System.Web.UI.WebControls;

namespace BlogProject
{
    public partial class BlogDetails : System.Web.UI.Page
    {
        project_blogEntities1 db = new project_blogEntities1();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            int Blog_Id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            var Blog = db.TBLBLOG.Where(x => x.BLOGID == Blog_Id).ToList();
            BlogDetail.DataSource = Blog;
            BlogDetail.DataBind();

            var Comments = db.TBLYORUM.Where(x => x.KITAPID == Blog_Id).ToList();
            CommentList.DataSource = Comments;
            CommentList.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int Blog_Id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            TBLYORUM t = new TBLYORUM();
            if (Name.Text != "" && Mail.Text != "" && Comment.Text != "")
            {
                t.KULLANICIAD = Name.Text;
                t.YORUM = Comment.Text;
                t.KITAPID = Blog_Id;
                db.TBLYORUM.Add(t); //Db'nin TBLYORUM tablosuna yeni t objesini ekledim.
                db.SaveChanges();
                Response.Redirect("BlogDetails.Aspx?BLOGID=" + Blog_Id);
            }

        }

        protected void btnLike_Click(object sender, EventArgs e)
        {
            int Blog_Id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            if (Session["KULLANICINICK"]!=null)
            {
                string kullaniciNick = Session["KULLANICINICK"] as string;
                var User = db.TBLKULLANICI.FirstOrDefault(user => user.KULLANICINICK == kullaniciNick);
                if (User != null)
                {
                    /*TBL_BEGENIBLOG t = new TBL_BEGENIBLOG
                    {
                        BLOG_ID = Blog_Id,
                        KULLANICI_ID = User.KULLANICIID_
                    };
                    db.TBL_BEGENIBLOG.Add(t);
                    db.SaveChanges();
                    ClientScript.RegisterStartupScript(this.GetType(), "ModalScript", "$(document).ready(function(){$('#successModal').modal('show'); setTimeout(function() { $('#successModal').modal('hide'); }, 1500);});", true);*/

                }

            }
        }
    }
}