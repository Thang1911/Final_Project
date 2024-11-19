using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging.Console;
using Test.Api.Data;
using Test.Api.Entities;
using Test.Model;

namespace Test.Api.Repositories
{
    public class ResearchProjectRepository : IResearchProjectRepository
    {
        private readonly ProjectDbContext _context;

        public ResearchProjectRepository(ProjectDbContext context)
        {
            _context = context;
        }
        public async Task<ResearchProject> Create(ResearchProject p)
        {
          await _context.ResearchProjects.AddAsync(p);
          await _context.SaveChangesAsync();
          return p;
        }

        public async Task<ResearchProject> Delete(ResearchProject p)
        {
            _context.ResearchProjects.Remove(p);
            await _context.SaveChangesAsync();
            return p;
        }

        public async Task<ResearchProject> getById(Guid id)
        {
            return await _context.ResearchProjects.FindAsync(id);
        }

        public async Task<IEnumerable<ResearchProject>> GetResearchProjectList(ProjectSearch ProjectSearch)
        {
            var query = _context.ResearchProjects.AsQueryable();

            if (!string.IsNullOrEmpty(ProjectSearch.Name))
            {
                query = query.Where(x => x.ProjectName.Contains(ProjectSearch.Name));
            }

            if (ProjectSearch.Status.HasValue)
            {
                query = query.Where(x => x.Status == ProjectSearch.Status.Value);
            }

            var listProjects = await query.Select(x => new ResearchProject()
            {
                ProjectDescription = x.ProjectDescription,
                ProjectImage = x.ProjectImage,
                ProjectName = x.ProjectName,
                Advisor = x.Advisor,
                Students = x.Students,
                Status = x.Status,
                Id = x.Id,
                CreatedAt = x.CreatedAt,
                UpdatedAt = x.UpdatedAt,
            }).ToListAsync();

            return listProjects.OrderByDescending(x => x.CreatedAt);

        }


        public async Task<ResearchProject> Update(ResearchProject p)
        {
            _context.ResearchProjects.Update(p);
            await _context.SaveChangesAsync();
            return p;
        }
    }
}
