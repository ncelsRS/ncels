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
    
    public partial class sr_form_types
    {
        public sr_form_types()
        {
            this.sr_producers = new HashSet<sr_producers>();
        }
    
        public long id { get; set; }
        public string name { get; set; }
        public string name_kz { get; set; }
        public string full_name { get; set; }
        public string full_name_kz { get; set; }
    
        public virtual ICollection<sr_producers> sr_producers { get; set; }
    }
}