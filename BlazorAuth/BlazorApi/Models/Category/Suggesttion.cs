using System.ComponentModel.DataAnnotations;

namespace BlazorApi.Models.Category
{
    public class Suggesttion
    {
        [Key]
        public string id { get; set; }
        public string suggestion_id { get; set; }
        public string suggestion_name { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
