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
    
    public partial class I1c_trl_ApplicationRefuseState
    {
        public System.Guid Id { get; set; }
        public string ApplicationNumber { get; set; }
        public Nullable<System.DateTime> ApplicationDatetime { get; set; }
        public Nullable<bool> IsRefuse { get; set; }
        public Nullable<System.DateTime> RefuseDatetime { get; set; }
        public System.Guid refApplication { get; set; }
    }
}