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
    
    public partial class EXP_DrugAnaliseIndicator
    {
        public System.Guid Id { get; set; }
        public System.Guid DosageStageId { get; set; }
        public Nullable<int> AnalyseIndicator { get; set; }
        public Nullable<double> Temperature { get; set; }
        public Nullable<double> Humidity { get; set; }
        public string Designation { get; set; }
        public string Demand { get; set; }
        public string ActualResult { get; set; }
        public Nullable<bool> IsMatches { get; set; }
        public bool InProtocol { get; set; }
        public int PositionNumber { get; set; }
    
        public virtual EXP_DIC_AnalyseIndicator EXP_DIC_AnalyseIndicator { get; set; }
        public virtual EXP_ExpertiseStageDosage EXP_ExpertiseStageDosage { get; set; }
    }
}
