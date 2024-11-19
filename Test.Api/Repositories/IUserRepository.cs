using Test.Api.Entities;

namespace Test.Api.Repositories
{
    public interface IUserRepository
    {
        Task<List<IdentityUsers>> GetUserList();
    }
}
