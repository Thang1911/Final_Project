using BlazorFE.Data;
using BlazorFE.Models.Category;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services
{
    public class DegreeServices
    {
        private readonly ApplicationDbContext _context;

        public DegreeServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<Degree>> GetListDegree()
        {
            return await _context.Degrees.AsNoTracking().ToListAsync();
        }

        public async Task AddDegree(Degree degree)
        {
            _context.Degrees.Add(degree);
            await _context.SaveChangesAsync();
        }

        public async Task UpdateDegree(Degree degree)
        {
            var existingDegree = await _context.Degrees.FindAsync(degree.id);
            if (existingDegree != null)
            {
                existingDegree.degree_name = degree.degree_name;
                existingDegree.updated_at = degree.updated_at;

                _context.Entry(existingDegree).State = EntityState.Modified;
                await _context.SaveChangesAsync();
            }
        }

        public async Task DeleteDegree(string degreeId)
        {
            var degree = await _context.Degrees.FindAsync(degreeId);
            if (degree != null)
            {
                _context.Degrees.Remove(degree);
                await _context.SaveChangesAsync();
            }
        }
    }
}
