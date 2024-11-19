using System.Threading.Tasks;
using Test.Model;
using ResearchPj = Test.Api.Entities.ResearchProject;

namespace Test.Api.Repositories
{
    public interface IResearchProjectRepository
    {
        Task<IEnumerable<ResearchPj>> GetResearchProjectList(ProjectSearch ProjectSearch);

        Task<ResearchPj> Create(ResearchPj p);

        Task<ResearchPj> Update(ResearchPj p);

        Task<ResearchPj> Delete(ResearchPj p);

        Task<ResearchPj> getById(Guid id);
    }
}
