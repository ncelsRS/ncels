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
    
    public partial class sr_nd_types
    {
        public sr_nd_types()
        {
            this.sr_register_substances = new HashSet<sr_register_substances>();
        }
    
        public int id { get; set; }
        public string name { get; set; }
        public string name_kz { get; set; }
        public string short_name { get; set; }
        public string short_name_kz { get; set; }
    
        public virtual ICollection<sr_register_substances> sr_register_substances { get; set; }
    }
}