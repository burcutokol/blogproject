﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System.Collections.Generic;

namespace BlogProject.Entity
{
    public partial class TBLKULLANICI
    {
        public int KULLANICIID_ { get; set; }
        public string KULLANICINICK { get; set; }
        public string KULLANICIAD { get; set; }

        public string KULLANICISOYAD { get; set; }
        public string KULLANICISIFRE { get; set; }
        public string KULLANICIMAIL { get; set; }

        public virtual ICollection<TBL_BLOGBEGENI> TBL_BLOGBEGENI { get; set; }
        public virtual ICollection<TBL_BLOGISTEK> TBL_BLOGISTEK { get; set; }
        public virtual ICollection<TBL_BLOGOKUNAN> TBL_BLOGOKUNAN { get; set; }
        public virtual TBLYORUM TBLYORUM { get; set; }
    }
}