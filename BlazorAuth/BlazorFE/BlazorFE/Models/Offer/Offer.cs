using BlazorFE.Models.Category;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BlazorFE.Models.Offer
{
    public class Offers
    {
        [Key]
        public string id { get; set; }
        public int year { get; set; }
        public int? month { get; set; }
        public string offer_name { get; set; }

        [ForeignKey(nameof(Propose))]
        public string propose_id { get; set; }
        public virtual Propose? Propose { get; set; }
        public string? note { get; set; }
        public string status { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
