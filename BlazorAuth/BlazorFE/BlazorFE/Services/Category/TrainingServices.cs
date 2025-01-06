using BlazorFE.Data;
using BlazorFE.Models.Category;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services.Category
{
    public class TrainingServices
    {
        private readonly ApplicationDbContext _context;

        public TrainingServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<Training>> GetListTraining()
        {
            return await _context.Trainings.ToListAsync();
        }
    }
}
