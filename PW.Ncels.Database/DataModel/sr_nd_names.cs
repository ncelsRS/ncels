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
    
    public partial class sr_nd_names
    {
        public sr_nd_names()
        {
            this.sr_register_drugs = new HashSet<sr_register_drugs>();
        }
    
        public int id { get; set; }
        public string name { get; set; }
        public string name_kz { get; set; }
        public int nd_number { get; set; }
        public Nullable<int> nd_term { get; set; }
    
        public virtual ICollection<sr_register_drugs> sr_register_drugs { get; set; }
    }
}