using BlazorFE.Data;
using BlazorFE.Models.Category;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services.Category
{
    public class TpCouncilServices
    {
        private readonly ApplicationDbContext _context;

        public TpCouncilServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<TpCouncil>> GetListTpCouncil()
        {
            return await _context.TpCouncils.AsNoTracking().ToListAsync();
        }

        public async Task AddTpCouncil(TpCouncil TpCouncil)
        {
            _context.TpCouncils.Add(TpCouncil);
            await _context.SaveChangesAsync();
        }

        public async Task UpdateTpCouncil(TpCouncil TpCouncil)
        {
            var existingTpCouncil = await _context.TpCouncils.FindAsync(TpCouncil.id);
            if (existingTpCouncil != null)
            {
                existingTpCouncil.tpCouncilId = TpCouncil.tpCouncilId;
                existingTpCouncil.tpcouncil_name = TpCouncil.tpcouncil_name;
                existingTpCouncil.updated_at = TpCouncil.updated_at;

                _context.Entry(existingTpCouncil).State = EntityState.Modified;
                await _context.SaveChangesAsync();
            }
        }

        public async Task DeleteTpCouncil(string id)
        {
            var TpCouncil = await _context.TpCouncils.FindAsync(id);
            if (TpCouncil != null)
            {
                _context.TpCouncils.Remove(TpCouncil);
                await _context.SaveChangesAsync();
            }
        }
    }
}
