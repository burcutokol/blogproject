using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogProject.Entity;

namespace BlogProject.AdminPages
{
    public partial class DeleteBlog : System.Web.UI.Page
    {
        project_blogEntities1 db = new project_blogEntities1();
        
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