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
    
    public partial class AvgExchangeRatesView
    {
        public int currency_id { get; set; }
        public Nullable<int> year { get; set; }
        public Nullable<int> month { get; set; }
        public Nullable<decimal> rate { get; set; }
        public string currency_code { get; set; }
    }
}
