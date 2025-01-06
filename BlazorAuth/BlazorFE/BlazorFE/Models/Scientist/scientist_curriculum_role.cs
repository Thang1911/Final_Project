using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using BlazorFE.Models.Curriculum;
using BlazorFE.Models.Category;

namespace BlazorFE.Models.Scientist
{
    public class ScientistCurriculumRole
    {
        [Key]
        public string id { get; set; }

        [ForeignKey("Scientist")]
        public string scientist_id { get; set; }
        public virtual Scientist? Scientist { get; set; }

        [ForeignKey("Curriculums")]
        public string curriculum_id { get; set; }
        public virtual Curriculums? Curriculums { get; set; }

        [ForeignKey("Role")]
        public string role_id { get; set; }
        public virtual Role? Role { get; set; }
        public bool? status { get; set; }
        public string? requestStatus { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
