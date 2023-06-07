using BlogProject.Entity;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace BlogProject.AdminPages
{
    public partial class Blogs : System.Web.UI.Page
    {
        project_blogEntities1 db = new project_blogEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KULLANICIADI"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                Response.Write("Hoşgeldiniz" + Session["KULLANICIADI"].ToString()); //yönlendirilecek sayfa
            }
            Repeater1.DataSource = db.TBLBLOG.ToList();
            Repeater1.DataBind();
        }
    }
}