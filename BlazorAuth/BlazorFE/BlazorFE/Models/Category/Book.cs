using System.ComponentModel.DataAnnotations;

namespace BlazorFE.Models.Category
{
    public class Book
    {
        [Key]
        public string id { get; set; }
        public string book_name { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
