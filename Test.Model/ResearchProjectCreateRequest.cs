using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Test.Model
{
    public class ResearchProjectCreateRequest
    {
        [Key]
        public Guid Id { get; set; } = Guid.NewGuid();

        [MaxLength(256, ErrorMessage = "You cannot fill project name over than 256 characters")]
        [Required(ErrorMessage = "Please enter the project name.")]
        public string ProjectName { get; set; }
        [MaxLength(500, ErrorMessage = "You cannot fill project description over than 500 characters")]
        [Required(ErrorMessage = "Please enter the project description.")]
        public string ProjectDescription { get; set; }
        [MaxLength(256)]
        public string? ProjectImage { get; set; }
        [MaxLength(256)]
        public string? Advisor { get; set; }
        [MaxLength(256)]
        public string? Students { get; set; }

        public Enums.Status? Status { get; set; }
    }
}
