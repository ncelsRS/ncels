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
    
    public partial class OBK_Products_SeriesCom
    {
        public OBK_Products_SeriesCom()
        {
            this.OBK_Products_SeriesComRecord = new HashSet<OBK_Products_SeriesComRecord>();
        }
    
        public System.Guid Id { get; set; }
        public int ProductSerieId { get; set; }
        public bool IsError { get; set; }
        public System.DateTime DateCreate { get; set; }
        public bool IsDelete { get; set; }
    
        public virtual OBK_Procunts_Series OBK_Procunts_Series { get; set; }
        public virtual ICollection<OBK_Products_SeriesComRecord> OBK_Products_SeriesComRecord { get; set; }
    }
}
