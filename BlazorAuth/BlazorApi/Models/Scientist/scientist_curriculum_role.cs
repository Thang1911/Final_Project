using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using BlazorApi.Models.Curriculum;
using BlazorApi.Models.Category;

namespace BlazorApi.Models.Scientist
{
    public class ScientistCurriculumRole
    {
        [Key]
        public string id { get; set; }

        [ForeignKey("Scientist")]
        public string scientist_id { get; set; }

        [ForeignKey("Curriculums")]
        public string curriculum_id { get; set; }
        [ForeignKey("Role")]
        public string role_id { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
