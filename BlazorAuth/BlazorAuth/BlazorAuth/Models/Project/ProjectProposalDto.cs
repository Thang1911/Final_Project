﻿namespace BlazorAuth.Models.Project
{
    public class ProjectProposalDto
    {
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
