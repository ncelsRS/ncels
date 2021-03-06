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
    
    public partial class OBK_RS_Products
    {
        public OBK_RS_Products()
        {
            this.OBK_Procunts_Series = new HashSet<OBK_Procunts_Series>();
            this.OBK_ContractPrice = new HashSet<OBK_ContractPrice>();
            this.OBK_StageExpDocument = new HashSet<OBK_StageExpDocument>();
            this.OBK_MtPart = new HashSet<OBK_MtPart>();
            this.OBK_RS_ProductsCom = new HashSet<OBK_RS_ProductsCom>();
        }
    
        public int Id { get; set; }
        public string NameRu { get; set; }
        public string NameKz { get; set; }
        public string ProducerNameRu { get; set; }
        public string ProducerNameKz { get; set; }
        public string CountryNameRu { get; set; }
        public string CountryNameKZ { get; set; }
        public string TnvedCode { get; set; }
        public string KpvedCode { get; set; }
        public string Price { get; set; }
        public Nullable<System.Guid> ContractId { get; set; }
        public int RegTypeId { get; set; }
        public Nullable<int> DegreeRiskId { get; set; }
        public string DrugFormBoxCount { get; set; }
        public string DrugFormFullName { get; set; }
        public string DrugFormFullNameKz { get; set; }
        public Nullable<System.Guid> CurrencyId { get; set; }
        public int RegisterId { get; set; }
        public string RegNumber { get; set; }
        public string RegNumberKz { get; set; }
        public System.DateTime RegDate { get; set; }
        public Nullable<System.DateTime> ExpirationDate { get; set; }
        public string NdName { get; set; }
        public string NdNumber { get; set; }
    
        public virtual ICollection<OBK_Procunts_Series> OBK_Procunts_Series { get; set; }
        public virtual OBK_Contract OBK_Contract { get; set; }
        public virtual ICollection<OBK_ContractPrice> OBK_ContractPrice { get; set; }
        public virtual ICollection<OBK_StageExpDocument> OBK_StageExpDocument { get; set; }
        public virtual ICollection<OBK_MtPart> OBK_MtPart { get; set; }
        public virtual ICollection<OBK_RS_ProductsCom> OBK_RS_ProductsCom { get; set; }
    }
}
