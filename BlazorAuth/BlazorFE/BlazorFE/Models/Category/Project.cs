using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BlazorFE.Models.Category
{
    public class Project
    {
        [Key]
        public string id { get; set; }
        public string title { get; set; }
        public string? description { get; set; }
        [ForeignKey("Researcher")]
        public string reseacher_id { get; set; }
        public virtual Researcher? researcher { get; set; }
        public DateTime? created_at { get; set; }
        public DateTime updated_by { get; set; }
    }
}
