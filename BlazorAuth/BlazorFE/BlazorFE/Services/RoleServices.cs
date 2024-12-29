using BlazorFE.Data;
using BlazorFE.Models.Category;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services
{
    public class RoleServices
    {
        private readonly ApplicationDbContext _context;

        public RoleServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<Role>> GetListRole()
        {
            return await _context.Roles.AsNoTracking().ToListAsync();
        }
    }
}
