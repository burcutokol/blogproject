﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BlogProject.Entity
{
    using System;
    using System.Collections.Generic;

    public partial class TBLYORUM
    {
        public int YORUMID { get; set; }
        public int KULLANICIID { get; set; }
        public string YORUM { get; set; }
        public int KITAPID { get; set; }
        public Nullable<int> PUAN { get; set; }
        public string KULLANICIAD { get; set; }

        public virtual TBLBLOG TBLBLOG { get; set; }
        public virtual TBLKULLANICI TBLKULLANICI { get; set; }
    }
}