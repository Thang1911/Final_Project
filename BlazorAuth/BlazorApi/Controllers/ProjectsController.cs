using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using BlazorApi.Models.Project;
using BlazorApi.Services;
using BlazorApi.Models;
using System.Diagnostics;

namespace BlazorApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProjectsController : ControllerBase
    {
        private readonly ApplicationDbContext context;

        public ProjectsController(ApplicationDbContext context)
        {
            this.context = context;
        }

        // GET: api/Projects
        [HttpGet]
        public List<Project> GetProjects()
        {
            return context.Projects.OrderByDescending(x => x.StartDate).ToList();
        }

        [HttpGet("{id}")]
        public IActionResult GetProject(string id)
        {
            var project = context.Projects.Find(id);
            if (project == null)
            {
                return NotFound();
            };

            return Ok(project);
        }
        // PUT: api/Projects/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public IActionResult EditProject(string id, ProjectDto projectDto)
        {
            var project = context.Projects.Find(id);
            if (project == null)
            {
                Debug.WriteLine("Project with ID " + id + " not found.");
                return NotFound();
            }

            project.Title = projectDto.Title;
            project.Description = projectDto.Description;
            project.Budget = projectDto.Budget;
            project.Duration = projectDto.Duration;
            project.StartDate = projectDto.StartDate;
            project.EndDate = projectDto.EndDate;
            project.Status = projectDto.Status;

            context.SaveChanges();

            return Ok();
        }

        // POST: api/Projects
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Project>> CreateProject(ProjectDto projectDto)
        {
            var project = new Project
            {
                Title = projectDto.Title,
                Description = projectDto.Description,
                Budget = projectDto.Budget,
                Duration = projectDto.Duration,
                StartDate = projectDto.StartDate,
                EndDate = projectDto.EndDate,
                Status = projectDto.Status,
            };

            context.Projects.Add(project);
            context.SaveChanges();

            return Ok(project);
        }

        // DELETE: api/Projects/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteProject(string id)
        {
            var project = await context.Projects.FindAsync(id);
            if (project == null)
            {
                return NotFound();
            }

            context.Projects.Remove(project);
            await context.SaveChangesAsync();

            return Ok();
        }
    }
}
