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
    
    public partial class RequestOrderListView
    {
        public System.Guid OrderId { get; set; }
        public int OrderType { get; set; }
        public int OrderYear { get; set; }
        public string OrderNumber { get; set; }
        public System.Guid Id { get; set; }
        public Nullable<int> ReestrId { get; set; }
        public string MnnName { get; set; }
        public string Characteristic { get; set; }
        public string DrugForm { get; set; }
        public string Concentration { get; set; }
        public string Dosage { get; set; }
        public string TradeName { get; set; }
        public string RegNumber { get; set; }
        public Nullable<System.DateTime> RegDate { get; set; }
        public Nullable<System.DateTime> RegDateExpire { get; set; }
        public string AtxCode { get; set; }
        public string Manufacturer { get; set; }
        public string Measure { get; set; }
        public Nullable<int> State { get; set; }
        public Nullable<decimal> LimitPriceTn { get; set; }
        public Nullable<decimal> LimitPriceMnn { get; set; }
        public string Country { get; set; }
        public int Number { get; set; }
        public string Applicant { get; set; }
        public string substance_count { get; set; }
        public string unit_count { get; set; }
        public string volume { get; set; }
        public string dosage_comment { get; set; }
        public string Mark { get; set; }
        public string Status { get; set; }
        public string Reason { get; set; }
        public Nullable<int> RegisterDfId { get; set; }
        public string box_count { get; set; }
    }
}
