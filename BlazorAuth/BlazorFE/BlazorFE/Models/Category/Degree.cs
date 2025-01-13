using System.ComponentModel.DataAnnotations;

namespace BlazorFE.Models.Category
{
    public class Degree
    {
        [Key]
        public string id { get; set; }
        public string degree_name { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
