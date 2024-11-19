using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Test.Api.Repositories;
using Test.Model;
using Test.Model.Enums;

namespace Test.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ResearchProjectsController : ControllerBase
    {
        private readonly IResearchProjectRepository _researchProjectRepository;
        public ResearchProjectsController(IResearchProjectRepository researchProjectRepository) {
            _researchProjectRepository = researchProjectRepository;
        }

        [HttpGet]
        public async Task<IActionResult> GetAll([FromQuery]ProjectSearch ProjectSearch)
        {
            var listProject =  await _researchProjectRepository.GetResearchProjectList(ProjectSearch);
            return Ok(listProject);
        }

        [HttpPost]
        public async Task<IActionResult> Create([FromBody]ResearchProjectCreateRequest request)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            var newProject = await _researchProjectRepository.Create(new Entities.ResearchProject()
            {
                Id = request.Id,
                ProjectName = request.ProjectName,
                ProjectDescription = request.ProjectDescription,
                ProjectImage = request.ProjectImage ?? "Don't have image",
                Advisor = request.Advisor ?? "Don't have advisor",
                Students = request.Students ?? "Don't have students",
                Status = Status.Start,
                CreatedAt = DateTime.Now,
                UpdatedAt = DateTime.Now,
            });
            return CreatedAtAction(nameof(GetProjectById), new { id = newProject.Id } ,newProject);
        }

        [HttpPut]
        [Route("{id}")]
        public async Task<IActionResult> UpdateProject([FromRoute] Guid id, ResearchProjectUpdateRequest request)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var projectFromDb = await _researchProjectRepository.getById(id);

            if (projectFromDb == null) 
                return NotFound("Project is not found");

            projectFromDb.ProjectName = request.ProjectName;
            projectFromDb.ProjectDescription = request.ProjectDescription;
            projectFromDb.ProjectImage = request.ProjectImage;
            projectFromDb.Advisor = request.Advisor;
            projectFromDb.Students = request.Students;
            projectFromDb.Status = request.Status;
            projectFromDb.CreatedAt = projectFromDb.CreatedAt;
            projectFromDb.UpdatedAt = DateTime.Now;

            var updateProject = await _researchProjectRepository.Update(projectFromDb);

            return Ok(new ResearchProjectDto()
            {
                ProjectName = updateProject.ProjectName,
                ProjectDescription = updateProject.ProjectDescription,
                ProjectImage = updateProject.ProjectImage,
                Advisor = updateProject.Advisor,
                Students = updateProject.Students,
                Status = updateProject.Status,
                CreatedAt = updateProject.CreatedAt,
                UpdatedAt = updateProject.UpdatedAt,
                Id = updateProject.Id
            });
        }

        [HttpGet]
        [Route("{id}")]
        public async Task<IActionResult> GetProjectById([FromRoute] Guid id)
        {
            var project = await _researchProjectRepository.getById(id);
            if(project == null) return NotFound("Project is not found");
            return Ok(project);
        }
    }
}
