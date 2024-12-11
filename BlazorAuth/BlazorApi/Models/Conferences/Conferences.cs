using System.ComponentModel.DataAnnotations;

namespace BlazorApi.Models.Conferences
{
    public class Conferences
    {
        [Key]
        public string id { get; set; }
        public string conference_name { get; set; }
        public string seminar_id { get; set; }
        public string office { get; set; }
        public string unit { get; set; }
        public string status_name { get; set; }
        public DateTime date { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
