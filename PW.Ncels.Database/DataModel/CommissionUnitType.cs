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
    
    public partial class CommissionUnitType
    {
        public CommissionUnitType()
        {
            this.CommissionUnits = new HashSet<CommissionUnit>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public Nullable<int> MaxCount { get; set; }
    
        public virtual ICollection<CommissionUnit> CommissionUnits { get; set; }
    }
}
