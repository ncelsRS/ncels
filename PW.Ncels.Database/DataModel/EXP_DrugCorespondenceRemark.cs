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
    
    public partial class EXP_DrugCorespondenceRemark
    {
        public long Id { get; set; }
        public System.Guid DrugCorespondenceId { get; set; }
        public Nullable<int> RemarkTypeId { get; set; }
        public string NameRemark { get; set; }
        public Nullable<System.Guid> ExecuterId { get; set; }
        public Nullable<System.DateTime> RemarkDate { get; set; }
        public string AnswerRemark { get; set; }
        public bool IsFixed { get; set; }
        public bool IsAccepted { get; set; }
        public Nullable<System.DateTime> FixedDate { get; set; }
        public string Note { get; set; }
    
        public virtual Employee Employee { get; set; }
        public virtual EXP_DIC_RemarkType EXP_DIC_RemarkType { get; set; }
        public virtual EXP_DrugCorespondence EXP_DrugCorespondence { get; set; }
    }
}
