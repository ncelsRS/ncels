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
    
    public partial class OBK_RS_ProductsCom
    {
        public OBK_RS_ProductsCom()
        {
            this.OBK_RS_ProductsComRecord = new HashSet<OBK_RS_ProductsComRecord>();
        }
    
        public System.Guid Id { get; set; }
        public int ProductId { get; set; }
        public bool IsError { get; set; }
        public System.DateTime DateCreate { get; set; }
        public bool IsDelete { get; set; }
    
        public virtual OBK_RS_Products OBK_RS_Products { get; set; }
        public virtual ICollection<OBK_RS_ProductsComRecord> OBK_RS_ProductsComRecord { get; set; }
    }
}
