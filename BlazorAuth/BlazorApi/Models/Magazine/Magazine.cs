using System.ComponentModel.DataAnnotations;

namespace BlazorApi.Models.Magazine
{
    public class Magazine
    {
        [Key]
        public string id { get; set; }
        public string magazine_name { get; set; }
        public int year { get; set; }
        public string journal {  get; set; }
        public string paper_id { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
