using System.ComponentModel.DataAnnotations;
using Test.Model.Enums;

namespace Test.Api.Entities
{
    public class ResearchProject
    {
        [Key]
        public Guid Id { get; set; }
        [MaxLength(256)]
        [Required]
        public string ProjectName { get; set; }
        [MaxLength(500)]
        public string ProjectDescription { get; set; }
        [MaxLength(256)]
        public string ProjectImage { get; set; }
        [MaxLength(256)]
        public string Advisor {  get; set; }
        [MaxLength(256)]
        public string Students { get; set; }

        public Status Status { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime UpdatedAt { get; set; }
    }
}
