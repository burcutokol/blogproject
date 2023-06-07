using BlogProject.Entity;
using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace BlogProject.AdminPages
{
    public partial class NewBlog : System.Web.UI.Page
    {

        project_blogEntities1 db = new project_blogEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
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
            }

        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            TBLBLOG blog = new TBLBLOG();


            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "")
            {
                blog.BLOGBASLIK = TextBox1.Text;
                blog.BLOGTARIH = DateTime.Parse(TextBox2.Text);
                blog.BLOGGORSEL = TextBox3.Text;
                blog.BLOGICERIK = TextBox4.Text;
                blog.BLOGKATEGORİ = byte.Parse(DropDownList2.SelectedValue);
                blog.BLOGTURID = byte.Parse(DropDownList1.SelectedValue);


                db.TBLBLOG.Add(blog);
                db.SaveChanges();
                Response.Redirect("Blogs.aspx");


            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "ModalScript", "$(document).ready(function(){$('#myModal').modal('show');});", true);
            }
        }
    }
}