using Microsoft.EntityFrameworkCore;
using Test.Api.Data;
using Test.Api.Entities;

namespace Test.Api.Repositories
{
    public class UserRepository : IUserRepository
    {
        private readonly ProjectDbContext _context;

        public UserRepository(ProjectDbContext context) 
        {
            _context = context;
        }
        public async Task<List<IdentityUsers>> GetUserList()
        {
           return await _context.Users.ToListAsync();
        }
    }
}
