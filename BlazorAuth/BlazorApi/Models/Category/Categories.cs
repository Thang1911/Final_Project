using System.ComponentModel.DataAnnotations;

namespace BlazorApi.Models.Category
{
    public class Categories
    {
        [Key]
        public string id { get; set; }
        public string role_id { get; set; }
        public string category_name { get; set; }
        public string type { get; set; }
        public string training_id { get; set; }
        public int research_number { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
