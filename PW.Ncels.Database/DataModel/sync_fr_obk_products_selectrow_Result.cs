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
    
    public partial class sync_fr_obk_products_selectrow_Result
    {
        public long id { get; set; }
        public Nullable<long> application_id { get; set; }
        public string name { get; set; }
        public string name_kz { get; set; }
        public string producer_name { get; set; }
        public string producer_name_kz { get; set; }
        public string country_name { get; set; }
        public string country_name_kz { get; set; }
        public Nullable<decimal> party_count { get; set; }
        public Nullable<int> party_measure_id { get; set; }
        public string tnved_code { get; set; }
        public string kpved_code { get; set; }
        public Nullable<bool> mandatory_sign { get; set; }
        public string register_nd { get; set; }
        public string nd { get; set; }
        public string nd_kz { get; set; }
        public string reg_number { get; set; }
        public Nullable<long> register_id { get; set; }
        public Nullable<long> drug_form_id { get; set; }
        public Nullable<bool> cert_sign { get; set; }
        public Nullable<int> types_no_reg { get; set; }
        public int sync_row_is_tombstone { get; set; }
        public byte[] sync_row_timestamp { get; set; }
        public Nullable<long> sync_update_peer_timestamp { get; set; }
        public Nullable<int> sync_update_peer_key { get; set; }
        public Nullable<long> sync_create_peer_timestamp { get; set; }
        public Nullable<int> sync_create_peer_key { get; set; }
    }
}