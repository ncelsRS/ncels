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
    
    public partial class sync_fr_sr_register_substances_selectrow_Result
    {
        public int id { get; set; }
        public Nullable<int> register_id { get; set; }
        public Nullable<int> substance_type_id { get; set; }
        public Nullable<int> substance_id { get; set; }
        public Nullable<decimal> substance_count { get; set; }
        public Nullable<long> measure_id { get; set; }
        public Nullable<int> producer_id { get; set; }
        public Nullable<long> country_id { get; set; }
        public Nullable<int> nd_type_id { get; set; }
        public string comment { get; set; }
        public int sync_row_is_tombstone { get; set; }
        public byte[] sync_row_timestamp { get; set; }
        public Nullable<long> sync_update_peer_timestamp { get; set; }
        public Nullable<int> sync_update_peer_key { get; set; }
        public Nullable<long> sync_create_peer_timestamp { get; set; }
        public Nullable<int> sync_create_peer_key { get; set; }
    }
}
