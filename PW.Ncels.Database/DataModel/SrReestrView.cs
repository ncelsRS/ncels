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
    
    public partial class SrReestrView
    {
        public int n { get; set; }
        public int id { get; set; }
        public Nullable<int> df_id { get; set; }
        public string C_producer_name_kz { get; set; }
        public string C_producer_name { get; set; }
        public string C_producer_name_en { get; set; }
        public string C_country_name { get; set; }
        public Nullable<System.Guid> C_country_Id { get; set; }
        public string name_kz { get; set; }
        public string name { get; set; }
        public string reg_number { get; set; }
        public System.DateTime reg_date { get; set; }
        public int reg_action_id { get; set; }
        public string reg_action_name { get; set; }
        public string reg_action_name_kz { get; set; }
        public string C_int_name { get; set; }
        public string SubstanceName { get; set; }
        public string C_dosage_form_name { get; set; }
        public string C_dosage_form_name_kz { get; set; }
        public string dosage_value { get; set; }
        public string concentration { get; set; }
        public string C_atc_code { get; set; }
        public string description { get; set; }
        public string um { get; set; }
        public Nullable<System.Guid> umId { get; set; }
        public Nullable<System.DateTime> expiration_date { get; set; }
        public int type { get; set; }
        public string type_name { get; set; }
        public string type_name_kz { get; set; }
        public string volume { get; set; }
        public string volume_measure { get; set; }
        public string owner_name_kz { get; set; }
        public string owner_name_ru { get; set; }
        public string owner_name_en { get; set; }
        public string box_name1 { get; set; }
        public string box_name2 { get; set; }
        public string box_count { get; set; }
        public Nullable<System.Guid> owner_country_id { get; set; }
        public Nullable<System.Guid> degree_risk_id { get; set; }
    }
}