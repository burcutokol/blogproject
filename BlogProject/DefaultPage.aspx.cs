using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogProject.Entity;
namespace BlogProject
{
    public partial class DefaultPage : System.Web.UI.Page
    {
        project_blogEntities1 db = new project_blogEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int Comment_Id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            var Blogs = db.TBLBLOG.ToList();
            Repeater1.DataSource = Blogs;
            Repeater1.DataBind();

            var Categories = db.TBLKATEGORI.ToList();
            categories.DataSource = Categories;
            categories.DataBind();

            var LatestBlogs = db.TBLBLOG.OrderByDescending(x => x.BLOGTARIH).ToList().Take(5);
            latestblogs.DataSource = LatestBlogs;
            latestblogs.DataBind();

            var LatestComments = db.TBLYORUM.ToList().Take(5);
            latestcomments.DataSource = LatestComments;
            latestcomments.DataBind();

            int BlogId = Convert.ToInt32(Request.QueryString["KITAPID"]); 
            //TODO Yorumlar tarihe sıralı gelecek, yoruma tıklandığında ilgili kitaba gidecek.

        }

        
    }
}