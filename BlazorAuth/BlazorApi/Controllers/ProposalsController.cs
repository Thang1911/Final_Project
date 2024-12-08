using BlazorApi.Models;
using BlazorApi.Models.Project;
using BlazorApi.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace BlazorApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProposalsController : ControllerBase
    {
        private readonly ApplicationDbContext context;
        //private readonly RoleManager<IdentityRole> _roleManager;
        public ProposalsController(ApplicationDbContext context)
        {
            this.context = context;
            //_roleManager = roleManager;
        }

        [HttpGet]
        public List<ProjectProposal> GetProposals()
        {
            return context.Proposals.OrderByDescending(x => x.CreatedAt).ToList();
        }

        [HttpGet("{id}")]
        public IActionResult GetProposal(string id)
        {
            var proposal = context.Proposals.Find(id);
            if (proposal == null)
            {
                return NotFound();
            };

            return Ok(proposal);
        }

        [HttpPost]
        public IActionResult CreateProposal (ProjectProposalDto proposalDto)
        {
            var proposal = new ProjectProposal
            {
                ProposalId = Guid.NewGuid().ToString(),
                Title = proposalDto.Title,
                Abstract = proposalDto.Abstract,
                DetailedDescription = proposalDto.DetailedDescription,
                ProposedBudget = proposalDto.ProposedBudget,
                ProposedDuration = proposalDto.ProposedDuration,
                Status = "Pending",
                SubmissionDate = proposalDto.SubmissionDate,
                CreatedAt = DateTime.Now,
                UpdatedAt = DateTime.Now,
            };

            context.Proposals.Add(proposal);
            context.SaveChanges();

            return Ok(proposal);
        }

        [HttpPut("{id}")]
        public IActionResult EditProposal(string id, ProjectProposalDto proposalDto)
        {
            var proposal = context.Proposals.Find(id);
            if (proposal == null)
            {
                Debug.WriteLine("Proposal with ID " + id + " not found.");
                return NotFound();
            }

            proposal.Title = proposalDto.Title;
            proposal.Abstract = proposalDto.Abstract;
            proposal.DetailedDescription = proposalDto.DetailedDescription;
            proposal.ProposedBudget = proposalDto.ProposedBudget;
            proposal.ProposedDuration = proposalDto.ProposedDuration;
            proposal.Status = proposalDto.Status;
            proposal.SubmissionDate = proposalDto.SubmissionDate;
            proposal.ApprovalDate = proposalDto.ApprovalDate;
            proposal.UpdatedAt = DateTime.Now;

            context.SaveChanges();

            return Ok();
        }

        [HttpPut("approval/{id}")]
        public IActionResult ApproveProposal(string id)
        {
            var proposal = context.Proposals.Find(id);
            if (proposal == null)
            {
                return NotFound(new { message = $"Proposal with ID {id} not found." });
            }

            proposal.Status = "Approved";
            proposal.ApprovalDate = DateTime.Now;
            proposal.UpdatedAt = DateTime.Now;

            context.SaveChanges();

            return Ok(new { message = $"Proposal with ID {id} has been approved." });
        }

        [HttpDelete("{id}")]
        public IActionResult DeleteProposal (string id)
        {
            var proposal = context.Proposals.Find(id);
            if (proposal == null)
            {

                return NotFound();
            }

            context.Proposals.Remove(proposal);
            context.SaveChanges();

            return Ok();
        }
    }
}
