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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class project_blogEntities : DbContext
    {
        public project_blogEntities()
            : base("name=project_blogEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<TBL_BLOGBEGENI> TBL_BLOGBEGENI { get; set; }
        public virtual DbSet<TBL_BLOGISTEK> TBL_BLOGISTEK { get; set; }
        public virtual DbSet<TBL_BLOGOKUNAN> TBL_BLOGOKUNAN { get; set; }
        public virtual DbSet<TBL_TUR> TBL_TUR { get; set; }
        public virtual DbSet<TBLADMIN> TBLADMIN { get; set; }
        public virtual DbSet<TBLBLOG> TBLBLOG { get; set; }
        public virtual DbSet<TBLHAKKIMIZDA> TBLHAKKIMIZDA { get; set; }
        public virtual DbSet<TBLILETISIM> TBLILETISIM { get; set; }
        public virtual DbSet<TBLKATEGORI> TBLKATEGORI { get; set; }
        public virtual DbSet<TBLKULLANICI> TBLKULLANICI { get; set; }
        public virtual DbSet<TBLYORUM> TBLYORUM { get; set; }
    }
}
