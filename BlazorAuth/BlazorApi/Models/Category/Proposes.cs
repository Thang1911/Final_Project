using System.ComponentModel.DataAnnotations;

namespace BlazorApi.Models.Category
{
    public class Proposes
    {
        [Key]
        public string id { get; set; }
        public string propose_name { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
