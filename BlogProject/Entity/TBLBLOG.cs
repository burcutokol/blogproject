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

    public partial class TBLBLOG
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TBLBLOG()
        {
            this.TBLYORUM = new HashSet<TBLYORUM>();
        }

        public int BLOGID { get; set; }
        public string BLOGBASLIK { get; set; }
        public string BLOGICERIK { get; set; }
        public Nullable<System.DateTime> BLOGTARIH { get; set; }
        public string BLOGGORSEL { get; set; }
        public Nullable<byte> BLOGKATEGORİ { get; set; }
        public Nullable<int> BLOGTURID { get; set; }

        public virtual ICollection<TBL_BLOGBEGENI> TBL_BLOGBEGENI { get; set; }
        public virtual ICollection<TBL_BLOGISTEK> TBL_BLOGISTEK { get; set; }
        public virtual ICollection<TBL_BLOGOKUNAN> TBL_BLOGOKUNAN { get; set; }
        public virtual TBL_TUR TBL_TUR { get; set; }
        public virtual TBLKATEGORI TBLKATEGORI { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBLYORUM> TBLYORUM { get; set; }
    }
}