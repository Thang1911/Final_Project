using System.ComponentModel.DataAnnotations;

namespace BlazorFE.Models.Category
{
    public class Office
    {
        [Key]
        public string id { get; set; }
        public string office_id { get; set; }
        public string office_name { get; set; }
        public string address { get; set; }
        public int phone { get; set; }
        public string email { get; set; }
        public string office_parent { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
