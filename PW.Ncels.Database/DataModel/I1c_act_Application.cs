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
    
    public partial class I1c_act_Application
    {
        public System.Guid Id { get; set; }
        public string Number { get; set; }
        public Nullable<System.DateTime> CreateDatetime { get; set; }
        public Nullable<decimal> TotalPrice { get; set; }
        public string ActNumber1C { get; set; }
        public Nullable<System.DateTime> ActDate1C { get; set; }
        public System.DateTime ExportDatetime { get; set; }
        public Nullable<System.DateTime> ImportDatetime { get; set; }
        public Nullable<int> StageId { get; set; }
        public string StageCode { get; set; }
        public string StageValue { get; set; }
        public Nullable<System.Guid> refPrimaryApplication { get; set; }
    }
}
