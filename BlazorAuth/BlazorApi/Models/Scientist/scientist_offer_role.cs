using BlazorApi.Models.Category;
using BlazorApi.Models.Offer;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BlazorApi.Models.Scientist
{
    public class ScientistOfferRole
    {
        [Key]
        public string id { get; set; }
        [ForeignKey(nameof(Scientist))]
        public string scientist_id { get; set; }
        [ForeignKey(nameof(Offer))]
        public string offer_id { get; set; }
        [ForeignKey(nameof(Role))]
        public string role_id { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
