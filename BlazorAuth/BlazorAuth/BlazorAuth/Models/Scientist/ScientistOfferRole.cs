using BlazorApi.Models.Offer;
using BlazorAuth.Models.Category;
using System.ComponentModel.DataAnnotations.Schema;

namespace BlazorAuth.Models.Scientist
{
    public class ScientistOfferRole
    {
        public string id { get; set; }
        public string scientist_id { get; set; }
        public string offer_id { get; set; }
        public string role_id { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
