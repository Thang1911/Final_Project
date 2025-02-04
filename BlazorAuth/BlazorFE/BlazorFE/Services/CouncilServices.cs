using BlazorFE.Data;
using BlazorFE.Models.Council;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services
{
    public class CouncilServices
    {
        private readonly ApplicationDbContext _context;

        public CouncilServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<council>> GetAllCouncilsAsync()
        {
            return await _context.Council
                .Include(c => c.lvCouncil)
                .Include(c => c.tpCouncil)
                .ToListAsync();
        }

        public async Task<council?> GetCouncilByIdAsync(string id)
        {
            return await _context.Council
                .Include(c => c.lvCouncil)
                .Include(c => c.tpCouncil)
                .FirstOrDefaultAsync(c => c.id == id);
        }

        public async Task<bool> AddCouncilAsync(council newCouncil)
        {
            try
            {
                _context.Council.Add(newCouncil);
                int result = await _context.SaveChangesAsync();

                return result > 0;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error while adding council: {ex.Message}");
                return false;
            }
        }


        public async Task UpdateCouncilAsync(council updatedCouncil)
        {
            var existingCouncil = await _context.Council.FindAsync(updatedCouncil.id);
            if (existingCouncil != null)
            {
                _context.Entry(existingCouncil).CurrentValues.SetValues(updatedCouncil);
                await _context.SaveChangesAsync();
            }
        }

        public async Task DeleteCouncilAsync(string id)
        {
            var councilToDelete = await _context.Council.FindAsync(id);
            if (councilToDelete != null)
            {
                _context.Council.Remove(councilToDelete);
                await _context.SaveChangesAsync();
            }
        }
    }
}
