using BlogProject.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogProject
{
    public partial class Login : System.Web.UI.Page
    {
        project_blogEntities1 db = new project_blogEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var userQuery = from x in db.TBLADMIN
                            where x.KULLANICIADI == userName.Text
                            && x.SIFRE == password.Text
                            select x; 
            if(userQuery.Any())
            {
                Session.Add("KULLANICIADI", userName.Text); //Yönlenen sayfada kontrol et
                Response.Redirect("/AdminPages/Blogs/Blogs.aspx");
            }
            else
            {
                //TODO POPUP
            }
        }
    }
}