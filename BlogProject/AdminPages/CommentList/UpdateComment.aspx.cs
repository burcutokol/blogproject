using BlogProject.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogProject.AdminPages.CommentList
{
    public partial class UpdateComment : System.Web.UI.Page
    {
        project_blogEntities1 db = new project_blogEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int Comment_Id = Convert.ToInt32(Request.QueryString["YORUMID"]);
            if (Page.IsPostBack == false)
            {
                
                var Comment = db.TBLYORUM.Find(Comment_Id);
        
                TextBox1.Text = Comment.TBLBLOG.BLOGBASLIK;
                TextBox2.Text = Comment.KULLANICIAD;
                TextBox4.Text = Comment.YORUM;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int CommentId = Convert.ToInt32(Request.QueryString["YORUMID"]);
            var Comment = db.TBLYORUM.Find(CommentId);

            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox4.Text != "")
            {
                Comment.YORUM = TextBox4.Text;
                
                
                db.SaveChanges();
                Response.Redirect("Comments.aspx");

            }
            //TODO Else 
        }
    }
}