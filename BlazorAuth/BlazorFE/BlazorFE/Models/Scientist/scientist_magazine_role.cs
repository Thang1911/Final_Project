using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using BlazorFE.Models.Category;
using BlazorFE.Models.Magazine;

namespace BlazorFE.Models.Scientist
{
    public class ScientistMagazineRole
    {
        [Key]
        public string id { get; set; }

        [ForeignKey("Scientist")]
        public string scientist_id { get; set; }
        public virtual Scientist? Scientist { get; set; }
        [ForeignKey("Magazines")]
        public string magazine_id { get; set; }
        public virtual Magazines? Magazines { get; set; }
        [ForeignKey("Role")]
        public string role_id { get; set; }
        public virtual Role? Role { get; set; }
        public bool? status { get; set; }
        public string? requestStatus { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }

    }
}
