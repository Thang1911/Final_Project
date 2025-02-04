using BlazorFE.Data;
using BlazorFE.Models.Category;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services
{
    public class MagazineScoreServices
    {
        private readonly ApplicationDbContext _context;

        public MagazineScoreServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<MagazineScore>> GetListMagazineScore()
        {
            return await _context.MagazineScores.AsNoTracking().ToListAsync();
        }

        public async Task<MagazineScore?> GetMagazineScoreById(string id)
        {
            return await _context.MagazineScores.AsNoTracking().FirstOrDefaultAsync(ms => ms.id == id);
        }

        public async Task AddMagazineScore(MagazineScore magazineScore)
        {
            magazineScore.id = Guid.NewGuid().ToString();
            magazineScore.created_at = DateTime.Now;
            magazineScore.updated_at = DateTime.Now;

            _context.MagazineScores.Add(magazineScore);
            await _context.SaveChangesAsync();
        }

        public async Task UpdateMagazineScore(MagazineScore magazineScore)
        {
            var existingMagazineScore = await _context.MagazineScores.FindAsync(magazineScore.id);
            if (existingMagazineScore != null)
            {
                existingMagazineScore.magazine_score_name = magazineScore.magazine_score_name;
                existingMagazineScore.updated_at = DateTime.Now;

                _context.Entry(existingMagazineScore).State = EntityState.Modified;
                await _context.SaveChangesAsync();
            }
        }

        public async Task DeleteMagazineScore(string id)
        {
            var magazineScore = await _context.MagazineScores.FindAsync(id);
            if (magazineScore != null)
            {
                _context.MagazineScores.Remove(magazineScore);
                await _context.SaveChangesAsync();
            }
        }
    }
}
