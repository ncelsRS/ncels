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
    
    public partial class I1c_lims_Applications
    {
        public System.Guid Id { get; set; }
        public System.Guid Number { get; set; }
        public Nullable<System.Guid> ContractId { get; set; }
        public string ContractNumber { get; set; }
        public Nullable<System.DateTime> ContractDate { get; set; }
        public Nullable<System.DateTime> LastDeliveryDate { get; set; }
        public Nullable<System.Guid> ProviderId { get; set; }
        public string Provider { get; set; }
        public string ProviderBin { get; set; }
        public Nullable<System.Guid> FrpersonId { get; set; }
        public string FrpersonFio { get; set; }
        public Nullable<System.Guid> OrganizationId { get; set; }
        public Nullable<bool> FullDelivery { get; set; }
        public Nullable<System.Guid> PowerOfAttorneyId_1C { get; set; }
        public string PowerOfAttorneyNumber_1C { get; set; }
        public Nullable<System.DateTime> PowerOfAttorneyDatetime_1C { get; set; }
        public string FilePath { get; set; }
        public string Note { get; set; }
        public Nullable<System.DateTime> CreateDatetime { get; set; }
        public Nullable<System.DateTime> ExportDatetime { get; set; }
        public Nullable<System.DateTime> ImportDatetime { get; set; }
    }
}