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
    
    public partial class OBK_DeclarantContact
    {
        public OBK_DeclarantContact()
        {
            this.OBK_Contract = new HashSet<OBK_Contract>();
        }
    
        public System.Guid Id { get; set; }
        public Nullable<System.Guid> DeclarantId { get; set; }
        public string AddressLegalRu { get; set; }
        public string AddressLegalKz { get; set; }
        public string AddressFact { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string BankNameRu { get; set; }
        public string BankNameKz { get; set; }
        public string BankIik { get; set; }
        public string BankBik { get; set; }
        public Nullable<System.Guid> CurrencyId { get; set; }
        public string BossFio { get; set; }
        public string BossPosition { get; set; }
        public string BossLastName { get; set; }
        public string BossFirstName { get; set; }
        public string BossMiddleName { get; set; }
        public string BossDocNumber { get; set; }
        public Nullable<System.Guid> BossDocType { get; set; }
        public bool IsHasBossDocNumber { get; set; }
        public Nullable<System.DateTime> BossDocCreatedDate { get; set; }
        public bool SignType { get; set; }
        public string SignLastName { get; set; }
        public string SignFirstName { get; set; }
        public string SignMiddleName { get; set; }
        public string SignPosition { get; set; }
        public Nullable<System.Guid> SignDocType { get; set; }
        public bool IsHasSignDocNumber { get; set; }
        public string SignDocNumber { get; set; }
        public Nullable<System.DateTime> SignDocCreatedDate { get; set; }
        public System.DateTime CreateDate { get; set; }
        public Nullable<System.DateTime> SignDocEndDate { get; set; }
        public bool SignDocUnlimited { get; set; }
        public Nullable<System.DateTime> BossDocEndDate { get; set; }
        public bool BossDocUnlimited { get; set; }
        public bool SignerIsBoss { get; set; }
        public string SignPositionKz { get; set; }
        public string BossPositionKz { get; set; }
    
        public virtual ICollection<OBK_Contract> OBK_Contract { get; set; }
        public virtual OBK_Declarant OBK_Declarant { get; set; }
    }
}