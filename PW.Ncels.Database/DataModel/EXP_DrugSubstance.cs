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
    
    public partial class EXP_DrugSubstance
    {
        public EXP_DrugSubstance()
        {
            this.EXP_DrugSubstanceManufacture = new HashSet<EXP_DrugSubstanceManufacture>();
        }
    
        public long Id { get; set; }
        public Nullable<int> SubstanceTypeId { get; set; }
        public Nullable<int> SubstanceId { get; set; }
        public string SubstanceName { get; set; }
        public string SubstanceCount { get; set; }
        public Nullable<long> MeasureId { get; set; }
        public string ProducerName { get; set; }
        public string ProducerAddress { get; set; }
        public Nullable<long> CountryId { get; set; }
        public string NormativeDocument { get; set; }
        public bool IsControl { get; set; }
        public bool IsPoison { get; set; }
        public Nullable<int> PlantKindId { get; set; }
        public string Locus { get; set; }
        public Nullable<int> OriginId { get; set; }
        public long DrugDosageId { get; set; }
        public bool IsNotFound { get; set; }
        public string NewName { get; set; }
        public Nullable<int> NormDocFarmId { get; set; }
    
        public virtual EXP_DIC_Origin EXP_DIC_Origin { get; set; }
        public virtual EXP_DIC_PlantKind EXP_DIC_PlantKind { get; set; }
        public virtual sr_countries sr_countries { get; set; }
        public virtual sr_measures sr_measures { get; set; }
        public virtual sr_substances sr_substances { get; set; }
        public virtual sr_substance_types sr_substance_types { get; set; }
        public virtual EXP_DrugDosage EXP_DrugDosage { get; set; }
        public virtual EXP_DIC_NormDocFarm EXP_DIC_NormDocFarm { get; set; }
        public virtual ICollection<EXP_DrugSubstanceManufacture> EXP_DrugSubstanceManufacture { get; set; }
    }
}
