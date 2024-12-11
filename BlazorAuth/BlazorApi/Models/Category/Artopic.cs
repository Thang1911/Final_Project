using System.ComponentModel.DataAnnotations;

namespace BlazorApi.Models.Category
{
    public class Artopic
    {
        [Key]
        public string id { get; set; }
        public string artopic_id { get; set; }
        public string artopic_name { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
