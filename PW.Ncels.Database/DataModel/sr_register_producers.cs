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
    
    public partial class sr_register_producers
    {
        public int id { get; set; }
        public int register_id { get; set; }
        public int producer_id { get; set; }
        public int producer_type_id { get; set; }
        public long country_id { get; set; }
        public bool language_sign { get; set; }
    
        public virtual sr_countries sr_countries { get; set; }
        public virtual sr_producer_types sr_producer_types { get; set; }
        public virtual sr_producers sr_producers { get; set; }
        public virtual sr_register sr_register { get; set; }
    }
}
