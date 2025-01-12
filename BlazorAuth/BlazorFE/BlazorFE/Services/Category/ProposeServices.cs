using BlazorFE.Data;
using BlazorFE.Models.Category;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services
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
            return await _context.Proposes.AsNoTracking().ToListAsync();
        }

        public async Task AddPropose(Propose propose)
        {
            _context.Proposes.Add(propose);
            await _context.SaveChangesAsync();
        }

        public async Task UpdatePropose(Propose propose)
        {
            var existingPropose = await _context.Proposes.FindAsync(propose.id);
            if (existingPropose != null)
            {
                existingPropose.propose_name = propose.propose_name;
                existingPropose.updated_at = propose.updated_at;

                _context.Entry(existingPropose).State = EntityState.Modified;
                await _context.SaveChangesAsync();
            }
        }

        public async Task DeletePropose(string proposeId)
        {
            var propose = await _context.Proposes.FindAsync(proposeId);
            if (propose != null)
            {
                _context.Proposes.Remove(propose);
                await _context.SaveChangesAsync();
            }
        }
    }
}
