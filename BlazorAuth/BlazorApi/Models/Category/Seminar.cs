using BlazorApi.Models.Conferences;
using System.ComponentModel.DataAnnotations;

namespace BlazorApi.Models.Category
{
    public class Seminar
    {
        [Key]
        public string id { get; set; }
        public string seminar_name { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
