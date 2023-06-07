using BlogProject.Entity;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace BlogProject.AdminPages.CommentList
{
    public partial class Comments : System.Web.UI.Page
    {
        project_blogEntities1 db = new project_blogEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            var CommentList = (from comment in db.TBLYORUM
                               select new
                               {
                                   comment.YORUMID,
                                   comment.KULLANICIAD,
                                   comment.TBLBLOG.BLOGBASLIK,
                                   comment.YORUM
                               }).ToList();
            Repeater1.DataSource = CommentList;
            Repeater1.DataBind();
        }

    }
}