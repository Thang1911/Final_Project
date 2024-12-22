using System.ComponentModel.DataAnnotations;

namespace BlazorFE.Models.Category
{
    public class Arseach
    {
        [Key]
        public string id { get; set; }
        public string arsearch_id { get; set; }
        public string arseach_name { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
