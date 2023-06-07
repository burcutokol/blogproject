


namespace BlogProject.Entity
{
    using System;
    using System.Collections.Generic;
    public partial class TBLKULLANICI
    {
        public int KULLANICIID_ { get; set; }
        public string KULLANICINICK { get; set; }
        public string KULLANICIAD { get; set; }
        public string KULLANICISOYAD { get; set; }
        public string KULLANICIMAIL { get; set; }
        public string KULLANICISIFRE { get; set; }

        public virtual TBLYORUM TBLYORUM { get; set; }

    }
}