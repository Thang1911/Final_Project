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
            paper.created_at = DateTime.Now;
            paper.updated_at = DateTime.Now;

            _context.Papers.Add(paper);
            await _context.SaveChangesAsync();
        }

        public async Task UpdatePaper(Paper paper)
        {
            var existingPaper = await _context.Papers.FindAsync(paper.id);
            if (existingPaper != null)
            {
                existingPaper.paper_name = paper.paper_name;
                existingPaper.paper_type = paper.paper_type;
                existingPaper.scope = paper.scope;
                existingPaper.updated_at = DateTime.Now;

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
