using Test.Model;

namespace Test.Services
{
    public class UserApiClient : IUserApiClient
    {
        public HttpClient _httpClient;

        public UserApiClient(HttpClient httpClient)
        {
            _httpClient = httpClient;
        }

        public async Task<List<IdentityUserDto>> GetAllUsers()
        {
            var result = await _httpClient.GetFromJsonAsync<List<IdentityUserDto>>("/api/Users");
            return result;
        }
    }
}
