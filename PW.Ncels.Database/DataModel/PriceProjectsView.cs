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
    
    public partial class PriceProjectsView
    {
        public System.Guid Id { get; set; }
        public int Type { get; set; }
        public string Number { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public int Status { get; set; }
        public System.Guid OwnerId { get; set; }
        public System.Guid ManufacturerOrganizationId { get; set; }
        public System.Guid HolderOrganizationId { get; set; }
        public System.Guid ProxyOrganizationId { get; set; }
        public string DoverennostNumber { get; set; }
        public Nullable<System.DateTime> DoverennostCreatedDate { get; set; }
        public Nullable<System.DateTime> DoverennostExpiryDate { get; set; }
        public string Filial { get; set; }
        public string NameKz { get; set; }
        public string NameRu { get; set; }
        public string RegNumber { get; set; }
        public Nullable<System.DateTime> RegDate { get; set; }
        public Nullable<System.Guid> LsTypeDicId { get; set; }
        public string NameOriginal { get; set; }
        public string MnnRu { get; set; }
        public string MnnEn { get; set; }
        public string FormNameKz { get; set; }
        public string FormNameRu { get; set; }
        public string Dosage { get; set; }
        public string CountPackage { get; set; }
        public string Concentration { get; set; }
        public string CodeAtx { get; set; }
        public Nullable<System.Guid> IntroducingMethodDicId { get; set; }
        public bool IsConvention { get; set; }
        public Nullable<System.Guid> ImnSecuryTypeDicId { get; set; }
        public Nullable<System.Guid> RePriceDicId { get; set; }
        public string OwnerLastName { get; set; }
        public string OwnerFirstName { get; set; }
        public string OwnerMiddleName { get; set; }
        public string ManufacturerOrganizationName { get; set; }
        public string HolderOrganizationName { get; set; }
        public string ProxyOrganizationName { get; set; }
        public string LsTypeName { get; set; }
        public string IntroducingMethodName { get; set; }
        public string ImnSecuryTypeName { get; set; }
        public string RePriceName { get; set; }
        public Nullable<System.Guid> PriceProjectId { get; set; }
        public Nullable<int> RegisterId { get; set; }
        public Nullable<int> RegisterDfId { get; set; }
        public string Volume { get; set; }
    }
}
