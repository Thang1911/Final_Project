using BlazorFE.Data;
using BlazorFE.Models.Magazine;
using BlazorFE.Models.Scientist;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services
{
    public class MagazineServices
    {
        private readonly ApplicationDbContext _context;

        public MagazineServices(ApplicationDbContext context)
        {
            _context = context;
        }

        // Get Magazines by Scientist ID
        public async Task<List<ScientistMagazineRole>> GetMagazinesByScientistIdAsync(string scientistId)
        {
            if (string.IsNullOrEmpty(scientistId))
                throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));

            var scientistMagazines = await _context.Set<ScientistMagazineRole>()
                .Where(smr => smr.scientist_id == scientistId)
                .Include(smr => smr.Magazines)
                .Include(smr => smr.Role)
                .ToListAsync();

            return scientistMagazines;
        }

        // Add a Magazine and Link to Scientist
        public async Task<bool> AddMagazineAndLinkToScientistAsync(Magazines newMagazine, string scientistId, string roleId)
        {
            if (newMagazine == null) throw new ArgumentNullException(nameof(newMagazine));
            if (string.IsNullOrEmpty(scientistId)) throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));
            if (string.IsNullOrEmpty(roleId)) throw new ArgumentException("Role ID cannot be null or empty", nameof(roleId));

            using var transaction = await _context.Database.BeginTransactionAsync();
            try
            {
                await _context.Set<Magazines>().AddAsync(newMagazine);
                await _context.SaveChangesAsync();

                var scientistMagazineRole = new ScientistMagazineRole
                {
                    id = Guid.NewGuid().ToString(),
                    scientist_id = scientistId,
                    magazine_id = newMagazine.id,
                    role_id = roleId,
                    created_at = DateTime.UtcNow,
                    updated_at = DateTime.UtcNow
                };

                await _context.Set<ScientistMagazineRole>().AddAsync(scientistMagazineRole);
                await _context.SaveChangesAsync();

                await transaction.CommitAsync();
                return true;
            }
            catch
            {
                await transaction.RollbackAsync();
                return false;
                throw;
            }
        }

        // Update a Magazine and Link to Scientist
        public async Task<bool> UpdateMagazineAndLinkToScientistAsync(string magazineId, Magazines updatedMagazine, string scientistId, string roleId)
        {
            if (updatedMagazine == null) throw new ArgumentNullException(nameof(updatedMagazine));
            if (string.IsNullOrEmpty(magazineId)) throw new ArgumentException("Magazine ID cannot be null or empty", nameof(magazineId));
            if (string.IsNullOrEmpty(scientistId)) throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));
            if (string.IsNullOrEmpty(roleId)) throw new ArgumentException("Role ID cannot be null or empty", nameof(roleId));

            using var transaction = await _context.Database.BeginTransactionAsync();
            try
            {
                var existingMagazine = await _context.Set<Magazines>().FindAsync(magazineId);
                if (existingMagazine == null) throw new InvalidOperationException("Magazine not found");

                existingMagazine.magazine_name = updatedMagazine.magazine_name;
                existingMagazine.year = updatedMagazine.year;
                existingMagazine.journal = updatedMagazine.journal;
                existingMagazine.paper_id = updatedMagazine.paper_id;
                existingMagazine.updated_at = DateTime.UtcNow;

                _context.Set<Magazines>().Update(existingMagazine);
                await _context.SaveChangesAsync();

                var scientistMagazineRole = await _context.Set<ScientistMagazineRole>()
                    .FirstOrDefaultAsync(smr => smr.scientist_id == scientistId && smr.magazine_id == magazineId);

                if (scientistMagazineRole != null)
                {
                    scientistMagazineRole.role_id = roleId;
                    scientistMagazineRole.updated_at = DateTime.UtcNow;
                    _context.Set<ScientistMagazineRole>().Update(scientistMagazineRole);
                    await _context.SaveChangesAsync();
                }

                await transaction.CommitAsync();
                return true;
            }
            catch
            {
                await transaction.RollbackAsync();
                return false;
                throw;
            }
        }

        // Delete a Magazine and Unlink from Scientist
        public async Task<bool> DeleteMagazineAndLinkFromScientistAsync(string magazineId, string scientistId)
        {
            if (string.IsNullOrEmpty(magazineId)) throw new ArgumentException("Magazine ID cannot be null or empty", nameof(magazineId));
            if (string.IsNullOrEmpty(scientistId)) throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));

            using var transaction = await _context.Database.BeginTransactionAsync();
            try
            {
                var scientistMagazineRole = await _context.Set<ScientistMagazineRole>()
                    .FirstOrDefaultAsync(smr => smr.scientist_id == scientistId && smr.magazine_id == magazineId);

                if (scientistMagazineRole != null)
                {
                    _context.Set<ScientistMagazineRole>().Remove(scientistMagazineRole);
                    await _context.SaveChangesAsync();
                }

                var existingMagazine = await _context.Set<Magazines>().FindAsync(magazineId);
                if (existingMagazine != null)
                {
                    _context.Set<Magazines>().Remove(existingMagazine);
                    await _context.SaveChangesAsync();
                }

                await transaction.CommitAsync();
                return true;
            }
            catch
            {
                await transaction.RollbackAsync();
                return false;
                throw;
            }
        }
    }
}
