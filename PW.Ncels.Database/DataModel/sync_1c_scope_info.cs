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
    
    public partial class sync_1c_scope_info
    {
        public int scope_local_id { get; set; }
        public System.Guid scope_id { get; set; }
        public string sync_scope_name { get; set; }
        public byte[] scope_sync_knowledge { get; set; }
        public byte[] scope_tombstone_cleanup_knowledge { get; set; }
        public byte[] scope_timestamp { get; set; }
        public Nullable<System.Guid> scope_config_id { get; set; }
        public int scope_restore_count { get; set; }
        public string scope_user_comment { get; set; }
    }
}
