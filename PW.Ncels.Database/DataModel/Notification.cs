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
    
    public partial class Notification
    {
        public long Id { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public System.DateTime ModifiedDate { get; set; }
        public string EmployeesId { get; set; }
        public bool IsRead { get; set; }
        public string Note { get; set; }
        public string TableName { get; set; }
        public string ObjectId { get; set; }
        public Nullable<int> StateType { get; set; }
        public string ModifiedUser { get; set; }
        public string Email { get; set; }
        public Nullable<bool> IsSend { get; set; }
    }
}
