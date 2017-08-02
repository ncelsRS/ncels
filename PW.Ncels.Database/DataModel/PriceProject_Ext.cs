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
    
    public partial class PriceProject_Ext
    {
        public System.Guid Id { get; set; }
        public string MnnCode { get; set; }
        public string DrugDescription { get; set; }
        public Nullable<System.DateTime> RegEndDate { get; set; }
        public string RequesterContacts { get; set; }
        public Nullable<decimal> MarginalPriceMnn2016 { get; set; }
        public Nullable<decimal> MarginalPriceTn622 { get; set; }
        public Nullable<decimal> PriceDropPercent { get; set; }
        public Nullable<bool> IsConformity639 { get; set; }
        public string Conformity639Note { get; set; }
        public Nullable<decimal> FixPrice_a_11_16 { get; set; }
        public Nullable<decimal> PriceDifference2016 { get; set; }
        public Nullable<decimal> IntRef_AvgInPricePackage2015 { get; set; }
        public Nullable<System.Guid> IntRef_AvgInPricePackage2015CurrencyId { get; set; }
        public Nullable<decimal> IntRef_AvgInPricePackage { get; set; }
        public Nullable<decimal> IntRef_RetailAktobe { get; set; }
        public Nullable<decimal> MinRefPriceCoef { get; set; }
        public string p16_Country { get; set; }
        public string p16_RegPrice { get; set; }
        public Nullable<int> p16_RegYear { get; set; }
        public string p16_MarginalPrice { get; set; }
        public Nullable<int> p16_MarginalYear { get; set; }
        public string p16_AvgOptPricee { get; set; }
        public string p16_AvgRetailPrice { get; set; }
        public Nullable<decimal> RegNcelsPrice_11_16 { get; set; }
        public Nullable<decimal> RegMzsrPrice_11_16 { get; set; }
        public Nullable<decimal> FinalPrice { get; set; }
        public Nullable<decimal> FinalPricePercent { get; set; }
        public Nullable<decimal> FinalFixPrice { get; set; }
        public Nullable<decimal> FinalMarginalPriceTn { get; set; }
        public Nullable<decimal> ProjectPrice2017 { get; set; }
        public Nullable<decimal> MinRefPrice2016 { get; set; }
        public string FixPrice_a_11_16_Reason { get; set; }
    }
}