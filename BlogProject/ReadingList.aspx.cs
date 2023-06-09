using BlogProject.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogProject
{
    public partial class ReadingList : System.Web.UI.Page
    {
        project_blogEntities db = new project_blogEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                if (Session["KULLANICINICK"] == null)
                {
                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    string kullaniciNick = Session["KULLANICINICK"] as string;
                    var User = db.TBLKULLANICI.FirstOrDefault(user => user.KULLANICINICK == kullaniciNick);
                   

                    var ReadingList= (from bb in db.TBL_BLOGISTEK
                                      join b in db.TBLBLOG on bb.KITAP_ID equals b.BLOGID
                                      where bb.KULLANICI_ID == User.KULLANICIID_
                                      orderby b.BLOGTARIH descending
                                      select new
                                      {
                                          BlogBaslik = b.BLOGBASLIK,
                                          BlogKategori = b.TBLKATEGORI.KATEGORIAD
                                      }).Take(5).ToList();
                    Repeater2.DataSource = ReadingList;
                    Repeater2.DataBind();


                }
            }


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            RepeaterItem item = (RepeaterItem)button.NamingContainer;



            string blogBaslik = ((Label)item.FindControl("Label1")).Text;
            string blogKategori = ((Label)item.FindControl("Label2")).Text;


            var blog = db.TBL_BLOGISTEK.FirstOrDefault(b => b.TBLBLOG.BLOGBASLIK == blogBaslik);

            if (blog != null)
            {
                db.TBL_BLOGISTEK.Remove(blog);
                db.SaveChanges();
            }
            Response.Redirect("ReadingList.aspx");
        }
    }
}