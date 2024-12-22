using BlazorAuth.Models.Category;

namespace BlazorAuth.Models.Offer
{
    public class Offer
    {
        public string id { get; set; }
        public int year { get; set; }
        public string offer_name { get; set; }
        public string propose_id { get; set; }
        public Propose? propose { get; set; }
        public string note { get; set; }
        public string status { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
