using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogProject.Entity;

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