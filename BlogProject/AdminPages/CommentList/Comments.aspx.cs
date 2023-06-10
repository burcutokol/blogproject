using BlogProject.Entity;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace BlogProject.AdminPages.CommentList
{
    public partial class Comments : System.Web.UI.Page
    {
        project_blogEntities db = new project_blogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KULLANICINICK"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                var CommentList = (from comment in db.TBLYORUM
                                   select new
                                   {
                                       comment.YORUMID,
                                       comment.KULLANICIAD,
                                       BlogBaslik = comment.TBLBLOG.BLOGBASLIK,
                                       comment.YORUM
                                   }).ToList();

                Repeater1.DataSource = CommentList;
                Repeater1.DataBind();
            }
            
        }

    }
}