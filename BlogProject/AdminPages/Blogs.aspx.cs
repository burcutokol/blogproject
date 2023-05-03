using BlogProject.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogProject.Entity;

namespace BlogProject.AdminPages
{
    public partial class Blogs : System.Web.UI.Page
        {
        project_blogEntities1 db = new project_blogEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.TBLBLOG.ToList();
            Repeater1.DataBind();   
        }
    }
}