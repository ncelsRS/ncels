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
    
    public partial class EXP_DrugType
    {
        public long Id { get; set; }
        public System.Guid DrugDeclarationId { get; set; }
        public Nullable<int> DrugTypeId { get; set; }
        public string DrugName { get; set; }
        public Nullable<int> DrugTypeKind { get; set; }
    
        public virtual EXP_DIC_DrugType EXP_DIC_DrugType { get; set; }
        public virtual EXP_DrugDeclaration EXP_DrugDeclaration { get; set; }
        public virtual EXP_DIC_DrugTypeKind EXP_DIC_DrugTypeKind { get; set; }
    }
}
