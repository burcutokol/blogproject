using BlogProject.Entity;
using System;
using System.Linq;

namespace BlogProject.AdminPages
{
    public partial class Statistics : System.Web.UI.Page
    {
        project_blogEntities1 db = new project_blogEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = db.TBLBLOG.Count().ToString(); //toplam kitap sayısı
            Label2.Text = db.TBLYORUM.Count().ToString(); //toplam yorum sayısı
            Label3.Text = db.TBLBLOG.Where(Blog => Blog.BLOGTURID == 1).Count().ToString(); //toplam roman sayısı

            //TODO Toplam kullanıcı sayısı
            Label4.Text = db.TBLBLOG.Where(Blog => Blog.BLOGID == db.TBLYORUM.GroupBy(Comment => Comment.KITAPID).OrderByDescending(Comment => Comment.Count()).Select
                (x => x.Key).FirstOrDefault()).Select(k => k.BLOGBASLIK).FirstOrDefault();


        }
    }
}