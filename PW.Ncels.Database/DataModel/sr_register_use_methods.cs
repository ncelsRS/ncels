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
    
    public partial class sr_register_use_methods
    {
        public int id { get; set; }
        public int register_id { get; set; }
        public int use_method_id { get; set; }
    
        public virtual sr_register_drugs sr_register_drugs { get; set; }
        public virtual sr_use_methods sr_use_methods { get; set; }
    }
}
