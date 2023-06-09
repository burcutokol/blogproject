using BlogProject.Entity;
using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogProject.AdminPages
{
    public partial class UpdateBlog : System.Web.UI.Page
    {
        project_blogEntities db = new project_blogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int BlogId = Convert.ToInt32(Request.QueryString["BLOGID"]);

            if (Page.IsPostBack == false)
            {
                var BlogTypes = (from type in db.TBL_TUR
                                 where !string.IsNullOrEmpty(type.TURAD)
                                 select new
                                 {
                                     type.TURID,
                                     type.TURAD
                                 }).ToList();
                DropDownList1.DataSource = BlogTypes;
                DropDownList1.DataValueField = "TURID";
                DropDownList1.DataTextField = "TURAD";
                DropDownList1.DataBind();


                var BlogCategories = (from categorie in db.TBLKATEGORI
                                      where !string.IsNullOrEmpty(categorie.KATEGORIAD)
                                      select new
                                      {
                                          categorie.KATEGORIID,
                                          categorie.KATEGORIAD
                                      }).ToList();

                DropDownList2.DataSource = BlogCategories;
                DropDownList2.DataValueField = "KATEGORIID";
                DropDownList2.DataTextField = "KATEGORIAD";
                DropDownList2.DataBind();

                var Blog = db.TBLBLOG.Find(BlogId);
                TextBox1.Text = Blog.BLOGBASLIK;
                TextBox2.Text = Blog.BLOGTARIH.ToString();
                TextBox3.Text = Blog.BLOGGORSEL;
                TextBox4.Text = Blog.BLOGICERIK;

                DropDownList1.SelectedValue = Blog.BLOGTURID.ToString();
                DropDownList2.SelectedValue = Blog.BLOGKATEGORİ.ToString();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int BlogId = Convert.ToInt32(Request.QueryString["BLOGID"]);
            var Blog = db.TBLBLOG.Find(BlogId);

            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "")
            {
                Blog.BLOGBASLIK = TextBox1.Text;
                //Blog.BLOGTARIH= DateTime.Parse(TextBox2.Text);
                Blog.BLOGTARIH = DateTime.Parse(DateTime.Now.ToString());
                Blog.BLOGGORSEL = TextBox3.Text;
                Blog.BLOGICERIK = TextBox4.Text;

                Blog.BLOGTURID = byte.Parse(DropDownList1.SelectedValue);
                Blog.BLOGKATEGORİ = byte.Parse(DropDownList2.SelectedValue);

                db.SaveChanges();
                Response.Redirect("Blogs.aspx");

            }



        }
    }
}