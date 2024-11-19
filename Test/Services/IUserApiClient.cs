using Test.Model;

namespace Test.Services
{
    public interface IUserApiClient
    {
        Task<List<IdentityUserDto>> GetAllUsers();
    }
}
