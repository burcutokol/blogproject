using System.Collections.Generic;

namespace BlogProject.Entity
{
    public partial class TBL_BLOGBEGENI
    {
        public int BEGENI_ID { get; set; }
        public int KULLANICI_ID { get; set; }
        public int KITAP_ID { get; set; }

        public virtual TBLKULLANICI TBLKULLANICI { get; set; }
        public virtual TBLBLOG TBLBLOG { get; set; }
    }

}
