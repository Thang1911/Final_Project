using BlazorFE.Data;
using BlazorFE.Models.Category;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services.Category
{
    public class ProposeServices
    {
        private readonly ApplicationDbContext _context;

        public ProposeServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<Propose>> GetListPropose()
        {
            return await _context.Proposes.ToListAsync();
        }
    }
}
