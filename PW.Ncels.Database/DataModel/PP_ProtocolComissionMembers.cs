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
    
    public partial class PP_ProtocolComissionMembers
    {
        public System.Guid Id { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public System.Guid ProtocolId { get; set; }
        public System.Guid EmployeeId { get; set; }
    
        public virtual Employee Employee { get; set; }
        public virtual PP_Protocols PP_Protocols { get; set; }
    }
}
