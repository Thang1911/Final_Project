using BlazorFE.Data;
using BlazorFE.Models.Category;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services.Category
{
    public class LvCouncilServices
    {
        private readonly ApplicationDbContext _context;

        public LvCouncilServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<LvCouncil>> GetListLvCouncil()
        {
            return await _context.LvCouncils.AsNoTracking().ToListAsync();
        }

        public async Task AddLvCouncil(LvCouncil lvCouncil)
        {
            _context.LvCouncils.Add(lvCouncil);
            await _context.SaveChangesAsync();
        }

        public async Task UpdateLvCouncil(LvCouncil lvCouncil)
        {
            var existingLvCouncil = await _context.LvCouncils.FindAsync(lvCouncil.id);
            if (existingLvCouncil != null)
            {
                existingLvCouncil.lvcoucil_name = lvCouncil.lvcoucil_name;
                existingLvCouncil.updated_at = lvCouncil.updated_at;

                _context.Entry(existingLvCouncil).State = EntityState.Modified;
                await _context.SaveChangesAsync();
            }
        }

        public async Task DeleteLvCouncil(string id)
        {
            var lvCouncil = await _context.LvCouncils.FindAsync(id);
            if (lvCouncil != null)
            {
                _context.LvCouncils.Remove(lvCouncil);
                await _context.SaveChangesAsync();
            }
        }
    }
}
