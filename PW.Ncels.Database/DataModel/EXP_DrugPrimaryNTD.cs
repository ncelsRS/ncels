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
    
    public partial class EXP_DrugPrimaryNTD
    {
        public long Id { get; set; }
        public System.Guid DrugDeclarationId { get; set; }
        public Nullable<System.DateTime> DateReg { get; set; }
        public Nullable<System.DateTime> DateConfirm { get; set; }
        public Nullable<int> TypeNDId { get; set; }
        public Nullable<int> TypeFileNDId { get; set; }
        public bool isNdConfirm { get; set; }
        public string NumberNd { get; set; }
        public string Note { get; set; }
    
        public virtual EXP_DIC_TypeFileND EXP_DIC_TypeFileND { get; set; }
        public virtual EXP_DIC_TypeND EXP_DIC_TypeND { get; set; }
        public virtual EXP_DrugDeclaration EXP_DrugDeclaration { get; set; }
    }
}
