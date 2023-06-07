using BlogProject.Entity;
using System;
using System.Linq;
using System.Web.DynamicData;
using System.Web.UI.WebControls;

namespace BlogProject
{
    public partial class DefaultPagewAccount : System.Web.UI.Page
    {
        project_blogEntities1 db = new project_blogEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ContentPlaceHolder headerContent = (ContentPlaceHolder)this.FindControl("headercontent");
                if (Session["KULLANICINICK"] != null)
                {


                    if (headerContent != null)
                    {
                        DynamicHyperLink logoLink = (DynamicHyperLink)headerContent.FindControl("logoLink");
                        DynamicHyperLink userLogin = (DynamicHyperLink)headerContent.FindControl("userLogin");
                        Label label = (Label)headerContent.FindControl("Label1");
                        if (logoLink != null)
                        {
                            // Kullanıcı giriş yapmışsa, logoya tıklanınca yönlendirilecek sayfa
                            logoLink.NavigateUrl = "DefaultPagewAccount.aspx";
                            userLogin.NavigateUrl = "UserAccount.aspx";
                            label.Text = " Hesabım";
                        }
                    }
                }
                else
                {
                    if (headerContent != null)
                    {
                        DynamicHyperLink logoLink = (DynamicHyperLink)headerContent.FindControl("logoLink");
                        DynamicHyperLink userLogin = (DynamicHyperLink)headerContent.FindControl("userLogin");
                        Label label = (Label)headerContent.FindControl("Label1");
                        if (logoLink != null)
                        {
                            // Kullanıcı giriş yapmamışsa, logoya tıklanınca yönlendirilecek sayfa
                            logoLink.NavigateUrl = "DefaultPage.aspx";
                            userLogin.NavigateUrl = "Login.aspx";
                            Label1.Text = "Giriş Yap";

                        }
                    }
                }
            }

            int Comment_Id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            var Blogs = db.TBLBLOG
            .OrderByDescending(x => x.BLOGTARIH)
            .AsEnumerable()
            .Select(y => new
            {
                BLOGICERIK = y.BLOGICERIK.Substring(0, Math.Min(y.BLOGICERIK.Length, 200)),
                BLOGID = y.BLOGID,
                BLOGBASLIK = y.BLOGBASLIK,
                BLOGTARIH = y.BLOGTARIH,
                BLOGGORSEL = y.BLOGGORSEL,
                BLOGKATEGORİ = y.BLOGKATEGORİ,
                BLOGTURID = y.BLOGTURID,

            }).ToList().Take(5);
            Repeater1.DataSource = Blogs;
            Repeater1.DataBind();

            var Categories = db.TBLKATEGORI.ToList();
            categories.DataSource = Categories;
            categories.DataBind();

            var LatestBlogs = db.TBLBLOG.OrderByDescending(x => x.BLOGTARIH).ToList().Take(5);
            latestblogs.DataSource = LatestBlogs;
            latestblogs.DataBind();

            var LatestComments = db.TBLYORUM
            .OrderByDescending(x => x.TBLBLOG.BLOGTARIH)
            .AsEnumerable()
            .Select(y => new
            {
                Yorum = y.YORUM.Substring(0, Math.Min(y.YORUM.Length, 40)),
                BlogId = y.KITAPID,
                KullanıcıAd = y.KULLANICIAD,

            }).ToList().Take(5);
            latestcomments.DataSource = LatestComments;
            latestcomments.DataBind();

            int BlogId = Convert.ToInt32(Request.QueryString["BlogId"]);
            var Blog = db.TBLBLOG.Find(BlogId);


        }


    }
}