using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
namespace MyWatchWatch.Models
{
    [MetadataType(typeof(Supplier.SupplierMetaData))]
    public partial class Supplier
    {
        internal sealed class SupplierMetaData
        {
            [Display(Name = "ID")]
            public int SupplierId { get; set; }

            [Display(Name = "Company")]
            public string CompanyName { get; set; }

            [Display(Name = "Representative")]
            public string ContactName { get; set; }

            [Display(Name = "Context")]
            public string ContactTitle { get; set; }

            [Display(Name = "Address")]
            public string Address { get; set; }

            [Display(Name = "Phone")]
            public string Phone { get; set; }

            [Display(Name = "Fax")]
            public string Fax { get; set; }

            [Display(Name = "Website")]
            public string HomePage { get; set; }

            [Display(Name = "Status")]
            public bool Status_Supplier { get; set; }
        }
    }
   
}