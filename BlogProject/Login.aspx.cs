using BlogProject.Entity;
using System;
using System.Linq;

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
            var userQuery = from x in db.TBLKULLANICI
                            where x.KULLANICINICK == userName.Text
                            && x.KULLANICISIFRE == password.Text
                            select x;
            if (userQuery.Any())
            {
                Session.Add("KULLANICINICK", userName.Text); //Yönlenen sayfada kontrol et

                if (userName.Text != null && userName.Text != "")
                {
                    Response.Redirect("DefaultPagewAccount.aspx");
                }
                else
                {
                    Response.Redirect("DefaultPage.aspx");
                }
            }
            else
            {
                //TODO POPUP
            }
        }
    }
}