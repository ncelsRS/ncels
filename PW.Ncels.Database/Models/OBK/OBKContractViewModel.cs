﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PW.Ncels.Database.Models.OBK
{
    public class OBKContractViewModel
    {
        public Guid Id { get; set; }
        public int Type { get; set; }
        public Guid? DeclarantId { get; set; }
        public bool DeclarantIsResident { get; set; }
        public Guid? DeclarantOrganizationFormId { get; set; }
        public string DeclarantBin { get; set; }
        public string DeclarantNameKz { get; set; }
        public string DeclarantNameRu { get; set; }
        public string DeclarantNameEn { get; set; }
        public Guid? DeclarantCountryId { get; set; }
        public int ExpertOrganization { get; set; }
        public string AddressLegalRu { get; set; }
        public string AddressLegalKz { get; set; }
        public string AddressFact { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string BossLastName { get; set; }
        public string BossFirstName { get; set; }
        public string BossMiddleName { get; set; }
        public string BossPosition { get; set; }
        public Guid? BossDocType { get; set; }
        public bool IsHasBossDocNumber { get; set; }
        public string BossDocNumber { get; set; }
        public DateTime? BossDocCreatedDate { get; set; }
        public string SignLastName { get; set; }
        public string SignFirstName { get; set; }
        public string SignMiddleName { get; set; }
        public string SignPosition { get; set;}
        public Guid? SignDocType { get; set; }
        public bool IsHasSignDocNumber { get; set; }
        public string SignDocNumber { get; set; }
        public DateTime? SignDocCreatedDate { get; set; }
        public string BankIik { get; set; }
        public string BankBik { get; set; }
        public Guid? CurrencyId { get; set; }
        public string BankNameRu { get; set; }
        public string BankNameKz { get; set; }
        public string Iin { get; set; }
    }
}
