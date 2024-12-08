using System.ComponentModel.DataAnnotations;

namespace BlazorApi.Models.Project
{
    public class ProjectProposal
    {
        [Key]
        public string ProposalId { get; set; }
        public string Title { get; set; }
        public string Abstract { get; set; }
        public string DetailedDescription { get; set; }
        public decimal ProposedBudget { get; set; }
        public int ProposedDuration { get; set; }
        public string? Status { get; set; }
        public DateTime SubmissionDate { get; set; }
        public DateTime? ApprovalDate { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime UpdatedAt { get; set; }
    }
}
