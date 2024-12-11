using System.ComponentModel.DataAnnotations;

namespace BlazorApi.Models.Category
{
    public class Paper
    {
        [Key]
        public string id { get; set; }
        public string paper_name { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
