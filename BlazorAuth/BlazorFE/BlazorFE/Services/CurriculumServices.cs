using BlazorFE.Data;
using BlazorFE.Models.Scientist;
using BlazorFE.Models.Curriculum;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services
{
    public class CurriculumServices
    {
        private readonly ApplicationDbContext _context;

        public CurriculumServices(ApplicationDbContext context)
        {
            _context = context;
        }

        // Get Curriculums by Scientist ID
        public async Task<List<ScientistCurriculumRole>> GetCurriculumsByScientistIdAsync(string scientistId)
        {
            if (string.IsNullOrEmpty(scientistId))
                throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));

            var scientistCurriculums = await _context.Set<ScientistCurriculumRole>()
                .Where(scr => scr.scientist_id == scientistId)
                .Include(scr => scr.Curriculums)
                    .ThenInclude(c => c.Book)
                .Include(scr => scr.Curriculums)
                    .ThenInclude(c => c.Training)
                .Include(scr => scr.Role)
                .ToListAsync();

            return scientistCurriculums;
        }

        // Add a Curriculum and Link to Scientist
        public async Task<bool> AddCurriculumAndLinkToScientistAsync(Curriculums newCurriculum, string scientistId, string roleId)
        {
            if (newCurriculum == null) throw new ArgumentNullException(nameof(newCurriculum));
            if (string.IsNullOrEmpty(scientistId)) throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));
            if (string.IsNullOrEmpty(roleId)) throw new ArgumentException("Role ID cannot be null or empty", nameof(roleId));

            using var transaction = await _context.Database.BeginTransactionAsync();
            try
            {
                await _context.Set<Curriculums>().AddAsync(newCurriculum);
                await _context.SaveChangesAsync();

                var scientistCurriculumRole = new ScientistCurriculumRole
                {
                    id = Guid.NewGuid().ToString(),
                    scientist_id = scientistId,
                    curriculum_id = newCurriculum.id,
                    role_id = roleId,
                    created_at = DateTime.UtcNow,
                    updated_at = DateTime.UtcNow
                };

                await _context.Set<ScientistCurriculumRole>().AddAsync(scientistCurriculumRole);
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

        // Update a Curriculum and Link to Scientist
        public async Task<bool> UpdateCurriculumAndLinkToScientistAsync(string curriculumId, Curriculums updatedCurriculum, string scientistId, string roleId)
        {
            if (updatedCurriculum == null) throw new ArgumentNullException(nameof(updatedCurriculum));
            if (string.IsNullOrEmpty(curriculumId)) throw new ArgumentException("Curriculum ID cannot be null or empty", nameof(curriculumId));
            if (string.IsNullOrEmpty(scientistId)) throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));
            if (string.IsNullOrEmpty(roleId)) throw new ArgumentException("Role ID cannot be null or empty", nameof(roleId));

            using var transaction = await _context.Database.BeginTransactionAsync();
            try
            {
                var existingCurriculum = await _context.Set<Curriculums>().FindAsync(curriculumId);
                if (existingCurriculum == null) throw new InvalidOperationException("Curriculum not found");

                existingCurriculum.name = updatedCurriculum.name;
                existingCurriculum.year = updatedCurriculum.year;
                existingCurriculum.publisher = updatedCurriculum.publisher;
                existingCurriculum.book_id = updatedCurriculum.book_id;
                existingCurriculum.training_id = updatedCurriculum.training_id;
                existingCurriculum.updated_at = DateTime.UtcNow;

                _context.Set<Curriculums>().Update(existingCurriculum);
                await _context.SaveChangesAsync();

                var scientistCurriculumRole = await _context.Set<ScientistCurriculumRole>()
                    .FirstOrDefaultAsync(scr => scr.scientist_id == scientistId && scr.curriculum_id == curriculumId);

                if (scientistCurriculumRole != null)
                {
                    scientistCurriculumRole.role_id = roleId;
                    scientistCurriculumRole.updated_at = DateTime.UtcNow;
                    _context.Set<ScientistCurriculumRole>().Update(scientistCurriculumRole);
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

        // Delete a Curriculum and Unlink from Scientist
        public async Task<bool> DeleteCurriculumAndLinkFromScientistAsync(string curriculumId, string scientistId)
        {
            if (string.IsNullOrEmpty(curriculumId)) throw new ArgumentException("Curriculum ID cannot be null or empty", nameof(curriculumId));
            if (string.IsNullOrEmpty(scientistId)) throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));

            using var transaction = await _context.Database.BeginTransactionAsync();
            try
            {
                var scientistCurriculumRole = await _context.Set<ScientistCurriculumRole>()
                    .FirstOrDefaultAsync(scr => scr.scientist_id == scientistId && scr.curriculum_id == curriculumId);

                if (scientistCurriculumRole != null)
                {
                    _context.Set<ScientistCurriculumRole>().Remove(scientistCurriculumRole);
                    await _context.SaveChangesAsync();
                }

                var existingCurriculum = await _context.Set<Curriculums>().FindAsync(curriculumId);
                if (existingCurriculum != null)
                {
                    _context.Set<Curriculums>().Remove(existingCurriculum);
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

