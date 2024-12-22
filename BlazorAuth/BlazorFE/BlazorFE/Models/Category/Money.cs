using System.ComponentModel.DataAnnotations;

namespace BlazorFE.Models.Category
{
    public class Money
    {
        [Key]
        public string id { get; set; }
        public string money_name { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
