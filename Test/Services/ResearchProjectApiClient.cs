using Test.Model;

namespace Test.Services
{
    public class ResearchProjectApiClient : IResearchProjectApiClient
    {
        public HttpClient _httpClient;

        public ResearchProjectApiClient(HttpClient httpClient)
        {
            _httpClient = httpClient;
        }

        public async Task<bool> CreateResearchProject(ResearchProjectCreateRequest request)
        {
            Console.WriteLine(request);
            var result = await _httpClient.PostAsJsonAsync("/api/ResearchProjects", request);

            return result.IsSuccessStatusCode;
        }

        public async Task<ResearchProjectDto> GetResearchProjectDetail(string id)
        {
            var result = await _httpClient.GetFromJsonAsync<ResearchProjectDto>($"/api/ResearchProjects/{id}");
            return result;
        }

        public async Task<List<ResearchProjectDto>> GetResearchProjectsList(ProjectSearch ProjectSearch)
        {
            string url = $"/api/ResearchProjects?name={ProjectSearch.Name}&status={ProjectSearch.Status}";
            var result = await _httpClient.GetFromJsonAsync<List<ResearchProjectDto>>(url);
            return result;
        }
    }
}
