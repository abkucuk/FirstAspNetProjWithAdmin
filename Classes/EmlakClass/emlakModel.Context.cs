﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EmlakClass
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class emlakEntities : DbContext
    {
        public emlakEntities()
            : base("name=emlakEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<il> il { get; set; }
        public DbSet<ilce> ilce { get; set; }
        public DbSet<kategori> kategori { get; set; }
        public DbSet<tipler> tipler { get; set; }
        public DbSet<turler> turler { get; set; }
    }
}