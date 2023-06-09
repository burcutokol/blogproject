using BlogProject.Entity;
using System;

namespace BlogProject.AdminPages
{
    public partial class DeleteBlog : System.Web.UI.Page
    {
        project_blogEntities db = new project_blogEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            int Blog_Id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            var Blog = db.TBLBLOG.Find(Blog_Id);
            db.TBLBLOG.Remove(Blog);
            db.SaveChanges();
            Response.Redirect("Blogs.aspx");


        }




    }
}