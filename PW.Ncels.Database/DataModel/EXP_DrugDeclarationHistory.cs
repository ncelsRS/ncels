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
    
    public partial class EXP_DrugDeclarationHistory
    {
        public long Id { get; set; }
        public Nullable<System.Guid> UserId { get; set; }
        public System.DateTime DateCreate { get; set; }
        public bool IsDelete { get; set; }
        public int StatusId { get; set; }
        public string Note { get; set; }
        public System.Guid DrugDeclarationId { get; set; }
        public string XmlSign { get; set; }
    
        public virtual Employee Employee { get; set; }
        public virtual EXP_DIC_Status EXP_DIC_Status { get; set; }
        public virtual EXP_DrugDeclaration EXP_DrugDeclaration { get; set; }
    }
}