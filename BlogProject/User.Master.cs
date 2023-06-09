using BlogProject.Entity;
using System;
using System.Linq;
using System.Web.DynamicData;
using System.Web.UI.WebControls;

namespace BlogProject
{
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["KULLANICINICK"] != null)
                {
                    ContentPlaceHolder headerContent = (ContentPlaceHolder)this.FindControl("headercontent");
                    if (headerContent != null)
                    {

                        DynamicHyperLink userLogin = (DynamicHyperLink)headerContent.FindControl("userLogin");
                        DynamicHyperLink logoLink = (DynamicHyperLink)headerContent.FindControl("logoLink");
                        Label label = (Label)headerContent.FindControl("Label1");

                        if (logoLink != null)
                        {
                            // Kullanıcı giriş yapmışsa, logoya tıklanınca yönlendirilecek sayfa
                            logoLink.NavigateUrl = "DefaultPagewAccount.aspx";
                            userLogin.NavigateUrl = "UserAccount.aspx";
                            label.Text = "Hesabım";
                            userLogin.Attributes.Add("text-decoration", "none");
                        }
                    }
                }
                else
                {
                    ContentPlaceHolder headerContent = (ContentPlaceHolder)this.FindControl("headercontent");
                    if (headerContent != null)
                    {
                        DynamicHyperLink userLogin = (DynamicHyperLink)headerContent.FindControl("userLogin");
                        DynamicHyperLink logoLink = (DynamicHyperLink)headerContent.FindControl("logoLink");
                        Label label = (Label)headerContent.FindControl("Label1");

                        if (logoLink != null)
                        {
                            // Kullanıcı giriş yapmamışsa, logoya tıklanınca yönlendirilecek sayfa
                            logoLink.NavigateUrl = "DefaultPage.aspx";
                            userLogin.NavigateUrl = "Login.aspx";
                            if (Label1 != null)
                            {
                                Label1.Text = "Giriş Yap";
                            }


                        }
                    }
                }
            }
        }


    

    }
}
