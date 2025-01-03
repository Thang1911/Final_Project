using BlazorFE.Data;
using BlazorFE.Models.Category;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services
{
    public class OfficeServices
    {
        private readonly ApplicationDbContext _context;

        public OfficeServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<Office>> GetListOffice()
        {
            return await _context.Offices.ToListAsync();
        }
    }
}
