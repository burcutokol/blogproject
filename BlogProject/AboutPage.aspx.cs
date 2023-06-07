using BlogProject.Entity;
using System;
using System.Linq;
using System.Web.UI.WebControls;
namespace BlogProject
{
    public partial class AboutPage : System.Web.UI.Page
    {
        project_blogEntities1 db = new project_blogEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            AboutRepeater.DataSource = db.TBLHAKKIMIZDA.ToList();
            AboutRepeater.DataBind();
        }
    }
}