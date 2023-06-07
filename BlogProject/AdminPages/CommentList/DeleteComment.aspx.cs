using BlogProject.Entity;
using System;

namespace BlogProject.AdminPages.CommentList
{
    public partial class DeleteComment : System.Web.UI.Page
    {
        project_blogEntities1 db = new project_blogEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int Comment_Id = Convert.ToInt32(Request.QueryString["YORUMID"]);
            var Comment = db.TBLYORUM.Find(Comment_Id);
            db.TBLYORUM.Remove(Comment);
            db.SaveChanges();
            Response.Redirect("Comments.aspx");
        }
    }
}