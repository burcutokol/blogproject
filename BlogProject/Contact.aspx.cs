using BlogProject.Entity;
using System;
using System.Web.UI.WebControls;

namespace BlogProject
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        project_blogEntities1 db = new project_blogEntities1();
        protected void Button1_Click(object sender, EventArgs e)
        {
            TBLILETISIM t = new TBLILETISIM();
            t.ADSOYAD = NameSurname.Text;
            t.MAIL = Mail.Text;
            t.TELEFON = Phone.Text;
            t.ICERIK = Topic.Text;
            t.KONU = TextBox.Text;

            db.TBLILETISIM.Add(t);
            db.SaveChanges();

            //kaydedildi tarzı popup eklenmeli.S


        }

    }
}