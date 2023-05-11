using BlogProject.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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