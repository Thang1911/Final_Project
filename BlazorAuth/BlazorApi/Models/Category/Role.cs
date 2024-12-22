using BlazorApi.Models.Scientist;
using System.ComponentModel.DataAnnotations;

namespace BlazorApi.Models.Category
{
    public class Role
    {
        [Key]
        public string id { get; set; }
        public string role_name { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
