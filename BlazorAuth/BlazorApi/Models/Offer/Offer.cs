using System.ComponentModel.DataAnnotations;

namespace BlazorApi.Models.Offer
{
    public class Offer
    {
        [Key]
        public string id { get; set; }
        public int year { get; set; }
        public string offer_name { get; set; }
        public string propose_id { get; set; }
        public string note { get; set; }
        public string status { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
