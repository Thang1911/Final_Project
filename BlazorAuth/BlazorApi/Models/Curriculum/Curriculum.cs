using System.ComponentModel.DataAnnotations;

namespace BlazorApi.Models.Curriculum
{
    public class Curriculum
    {
        [Key]
        public string id { get; set; }
        public string name { get; set; }
        public int year { get; set; }
        public string publisher { get; set; }
        public string book_id { get; set; }
        public string training_id { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
