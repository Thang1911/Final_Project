using BlazorFE.Data;
using BlazorFE.Models.Category;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services
{
    public class PaperServices
    {
        private readonly ApplicationDbContext _context;

        public PaperServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<Paper>> GetListPaper()
        {
            return await _context.Papers.AsNoTracking().ToListAsync();
        }

        public async Task<Paper?> GetPaperById(string id)
        {
            return await _context.Papers.AsNoTracking().FirstOrDefaultAsync(p => p.id == id);
        }

        public async Task AddPaper(Paper paper)
        {
            paper.id = Guid.NewGuid().ToString();
            paper.created_at = DateTime.UtcNow;
            paper.updated_at = DateTime.UtcNow;

            _context.Papers.Add(paper);
            await _context.SaveChangesAsync();
        }

        public async Task UpdatePaper(Paper paper)
        {
            var existingPaper = await _context.Papers.FindAsync(paper.id);
            if (existingPaper != null)
            {
                existingPaper.paper_name = paper.paper_name;
                existingPaper.updated_at = DateTime.UtcNow;

                _context.Entry(existingPaper).State = EntityState.Modified;
                await _context.SaveChangesAsync();
            }
        }

        public async Task DeletePaper(string id)
        {
            var paper = await _context.Papers.FindAsync(id);
            if (paper != null)
            {
                _context.Papers.Remove(paper);
                await _context.SaveChangesAsync();
            }
        }
    }
}
