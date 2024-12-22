using System.ComponentModel.DataAnnotations;
using BlazorFE.Enums;
using BlazorFE.Models.Topic;

namespace BlazorFE.Models.Category
{
    public class LvTopics
    {
        [Key]
        public string id { get; set; }
        public string lvtopic_name { get; set; }
        public Enums.CategoryType category { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
