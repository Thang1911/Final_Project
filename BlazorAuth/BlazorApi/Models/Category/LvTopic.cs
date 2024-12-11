using System.ComponentModel.DataAnnotations;
using BlazorApi.Enums;

namespace BlazorApi.Models.Category
{
    public class LvTopic
    {
        [Key]
        public string id { get; set; }
        public string lvtopic_name { get; set; }
        public Categories category { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
