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
    
    public partial class EXP_DrugSubstanceManufacture
    {
        public long Id { get; set; }
        public long DrugSubstanceId { get; set; }
        public string ProducerName { get; set; }
        public string ProducerAddress { get; set; }
        public Nullable<long> CountryId { get; set; }
    
        public virtual EXP_DrugSubstance EXP_DrugSubstance { get; set; }
        public virtual sr_countries sr_countries { get; set; }
    }
}
