using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Forms;
using Test.Model;
using Test.Services;

namespace Test.Components.Pages
{
    public partial class Main : ComponentBase
    {
        [Inject] private IResearchProjectApiClient ResearchProjectApiClient {  get; set; }
        [Inject] private IUserApiClient UserApiClient { get; set; }

        private List<ResearchProjectDto> ResearchProjects;
        private List<IdentityUserDto> Users;

        [SupplyParameterFromForm]
        public ProjectSearch ProjectSearch { get; set; } = new();

        protected override async Task OnInitializedAsync()
        {
            ResearchProjects = await ResearchProjectApiClient.GetResearchProjectsList(ProjectSearch);
            Users = await UserApiClient.GetAllUsers();
        }

        private async Task SearchForm()
        {
            Console.WriteLine($"Name: {ProjectSearch.Name}, Status: {ProjectSearch.Status}");
            ResearchProjects = await ResearchProjectApiClient.GetResearchProjectsList(ProjectSearch);
        }
    }
}
