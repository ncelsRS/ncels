//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PW.Ncels.Database.DataModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class sr_measures
    {
        public sr_measures()
        {
            this.EXP_DrugDeclaration = new HashSet<EXP_DrugDeclaration>();
            this.EXP_DrugDeclaration1 = new HashSet<EXP_DrugDeclaration>();
            this.EXP_DrugDeclaration2 = new HashSet<EXP_DrugDeclaration>();
            this.EXP_DrugDeclaration3 = new HashSet<EXP_DrugDeclaration>();
            this.EXP_DrugSubstance = new HashSet<EXP_DrugSubstance>();
            this.EXP_DrugWrapping = new HashSet<EXP_DrugWrapping>();
            this.EXP_DrugWrapping1 = new HashSet<EXP_DrugWrapping>();
            this.EXP_DrugDosage = new HashSet<EXP_DrugDosage>();
            this.sr_register_drugs = new HashSet<sr_register_drugs>();
            this.sr_register = new HashSet<sr_register>();
            this.EXP_DrugDosage1 = new HashSet<EXP_DrugDosage>();
            this.EXP_DrugDosage11 = new HashSet<EXP_DrugDosage>();
            this.EXP_DrugDosage2 = new HashSet<EXP_DrugDosage>();
            this.OBK_Procunts_Series = new HashSet<OBK_Procunts_Series>();
        }
    
        public long id { get; set; }
        public string name { get; set; }
        public string name_kz { get; set; }
        public string short_name { get; set; }
        public string short_name_kz { get; set; }
        public bool block_sign { get; set; }
    
        public virtual ICollection<EXP_DrugDeclaration> EXP_DrugDeclaration { get; set; }
        public virtual ICollection<EXP_DrugDeclaration> EXP_DrugDeclaration1 { get; set; }
        public virtual ICollection<EXP_DrugDeclaration> EXP_DrugDeclaration2 { get; set; }
        public virtual ICollection<EXP_DrugDeclaration> EXP_DrugDeclaration3 { get; set; }
        public virtual ICollection<EXP_DrugSubstance> EXP_DrugSubstance { get; set; }
        public virtual ICollection<EXP_DrugWrapping> EXP_DrugWrapping { get; set; }
        public virtual ICollection<EXP_DrugWrapping> EXP_DrugWrapping1 { get; set; }
        public virtual ICollection<EXP_DrugDosage> EXP_DrugDosage { get; set; }
        public virtual ICollection<sr_register_drugs> sr_register_drugs { get; set; }
        public virtual ICollection<sr_register> sr_register { get; set; }
        public virtual ICollection<EXP_DrugDosage> EXP_DrugDosage1 { get; set; }
        public virtual ICollection<EXP_DrugDosage> EXP_DrugDosage11 { get; set; }
        public virtual ICollection<EXP_DrugDosage> EXP_DrugDosage2 { get; set; }
        public virtual ICollection<OBK_Procunts_Series> OBK_Procunts_Series { get; set; }
    }
}
