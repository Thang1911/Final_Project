using System.Threading.Tasks;
using Test.Model;
namespace Test.Services
{
    public interface IResearchProjectApiClient
    {
        Task<List<ResearchProjectDto>> GetResearchProjectsList(ProjectSearch ProjectSearch);

        Task<ResearchProjectDto> GetResearchProjectDetail(string id);

        Task<bool> CreateResearchProject(ResearchProjectCreateRequest request);
    }
}
