using BlogProject.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogProject
{
    public partial class CategoryDetails : System.Web.UI.Page
    {
        project_blogEntities1 db = new project_blogEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
            int Category_Id = Convert.ToInt32(Request.QueryString["KATEGORIID"]);
            Label1.Text = db.TBLKATEGORI
                .Where(x => x.KATEGORIID == Category_Id)
                .Select(x => x.KATEGORIAD)
                .FirstOrDefault();

            
            var Blogs = db.TBLBLOG.Where(x => x.BLOGKATEGORİ == Category_Id).ToList();
            Repeater1.DataSource = Blogs;
            Repeater1.DataBind();

            var Categories = db.TBLKATEGORI.ToList();
            categories.DataSource = Categories;
            categories.DataBind();

            var LatestBlogs = db.TBLBLOG.OrderByDescending(x => x.BLOGTARIH).ToList(); ;
            latestblogs.DataSource = LatestBlogs;
            latestblogs.DataBind();

            

        }
    }
}