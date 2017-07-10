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
    
    public partial class sr_register
    {
        public sr_register()
        {
            this.EXP_DrugDeclaration = new HashSet<EXP_DrugDeclaration>();
            this.sr_drug_forms = new HashSet<sr_drug_forms>();
            this.sr_register_boxes = new HashSet<sr_register_boxes>();
            this.sr_register_substances = new HashSet<sr_register_substances>();
            this.sr_register_producers = new HashSet<sr_register_producers>();
            this.EXP_DrugDosage = new HashSet<EXP_DrugDosage>();
        }
    
        public int id { get; set; }
        public int reg_type_id { get; set; }
        public int reg_action_id { get; set; }
        public string reg_number { get; set; }
        public string reg_number_kz { get; set; }
        public System.DateTime reg_date { get; set; }
        public short reg_term { get; set; }
        public Nullable<System.DateTime> expiration_date { get; set; }
        public string name { get; set; }
        public string name_kz { get; set; }
        public string C_producer_name { get; set; }
        public string C_producer_name_kz { get; set; }
        public string C_country_name { get; set; }
        public string C_country_name_kz { get; set; }
        public bool gmp_sign { get; set; }
        public bool trademark_sign { get; set; }
        public bool patent_sign { get; set; }
        public Nullable<decimal> storage_term { get; set; }
        public Nullable<long> storage_measure_id { get; set; }
        public string comment { get; set; }
        public string comment_kz { get; set; }
        public Nullable<bool> unlimited_sign { get; set; }
    
        public virtual ICollection<EXP_DrugDeclaration> EXP_DrugDeclaration { get; set; }
        public virtual ICollection<sr_drug_forms> sr_drug_forms { get; set; }
        public virtual sr_measures sr_measures { get; set; }
        public virtual ICollection<sr_register_boxes> sr_register_boxes { get; set; }
        public virtual ICollection<sr_register_substances> sr_register_substances { get; set; }
        public virtual ICollection<sr_register_producers> sr_register_producers { get; set; }
        public virtual ICollection<EXP_DrugDosage> EXP_DrugDosage { get; set; }
    }
}
