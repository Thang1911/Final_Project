using BlazorFE.Models.Category;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BlazorFE.Models.Conferences
{
    public class Conference
    {
        [Key]
        public string id { get; set; }
        public string conference_name { get; set; }

        [ForeignKey(nameof(Seminar))]
        public string seminar_id { get; set; }
        public Seminar? Seminar { get; set; }
        public string? office { get; set; }
        public string? unit { get; set; }
        public string? money { get; set; }
        public string? status_name { get; set; }
        public DateTime date { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
