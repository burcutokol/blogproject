using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogProject.Entity;

namespace BlogProject
{
    public partial class BlogDetails : System.Web.UI.Page
    {
        project_blogEntities1 db = new project_blogEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int Blog_Id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            var Blog = db.TBLBLOG.Where(x=>x.BLOGID==Blog_Id).ToList();
            BlogDetail.DataSource= Blog;
            BlogDetail.DataBind();

            var Comments = db.TBLYORUM.Where(x=>x.KITAPID==Blog_Id).ToList();
            CommentList.DataSource= Comments;
            CommentList.DataBind();
        }
    }
}