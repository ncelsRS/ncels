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
    
    public partial class OBK_Ref_ContractExtHistoryStatus
    {
        public OBK_Ref_ContractExtHistoryStatus()
        {
            this.OBK_ContractExtHistory = new HashSet<OBK_ContractExtHistory>();
        }
    
        public System.Guid Id { get; set; }
        public string Code { get; set; }
        public string NameRu { get; set; }
        public string NameKz { get; set; }
        public string DescriptionRu { get; set; }
        public string DescriptionKz { get; set; }
        public System.DateTime DateCreate { get; set; }
        public bool IsDeleted { get; set; }
        public Nullable<System.DateTime> DateEdit { get; set; }
    
        public virtual ICollection<OBK_ContractExtHistory> OBK_ContractExtHistory { get; set; }
    }
}