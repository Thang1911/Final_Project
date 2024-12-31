using BlazorFE.Data;
using BlazorFE.Models.Scientist;
using BlazorFE.Models.Offer;
using Microsoft.EntityFrameworkCore;
namespace BlazorFE.Services
{
    public class OfferServices
    {
        private readonly ApplicationDbContext _context;

        public OfferServices(ApplicationDbContext context)
        {
            _context = context;
        }

        // Get Offers by Scientist ID
        public async Task<List<ScientistOfferRole>> GetOffersByScientistIdAsync(string scientistId)
        {
            if (string.IsNullOrEmpty(scientistId))
                throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));

            var scientistOffers = await _context.Set<ScientistOfferRole>()
                .Where(scr => scr.scientist_id == scientistId)
                .Include(scr => scr.Offer)
                    .ThenInclude(o => o.Propose)
                .Include(scr => scr.Role)
                .ToListAsync();

            return scientistOffers;
        }

        // Add a Offer and Link to Scientist
        public async Task<bool> AddOfferAndLinkToScientistAsync(Offers newOffer, string scientistId, string roleId)
        {
            if (newOffer == null) throw new ArgumentNullException(nameof(newOffer));
            if (string.IsNullOrEmpty(scientistId)) throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));
            if (string.IsNullOrEmpty(roleId)) throw new ArgumentException("Role ID cannot be null or empty", nameof(roleId));

            using var transaction = await _context.Database.BeginTransactionAsync();
            try
            {
                await _context.Set<Offers>().AddAsync(newOffer);
                await _context.SaveChangesAsync();

                var scientistOfferRole = new ScientistOfferRole
                {
                    id = Guid.NewGuid().ToString(),
                    scientist_id = scientistId,
                    offer_id = newOffer.id,
                    role_id = roleId,
                    created_at = DateTime.UtcNow,
                    updated_at = DateTime.UtcNow
                };

                await _context.Set<ScientistOfferRole>().AddAsync(scientistOfferRole);
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

        // Update a Offer and Link to Scientist
        public async Task<bool> UpdateOfferAndLinkToScientistAsync(string offerId, Offers updatedOffer, string scientistId, string roleId)
        {
            if (updatedOffer == null) throw new ArgumentNullException(nameof(updatedOffer));
            if (string.IsNullOrEmpty(offerId)) throw new ArgumentException("Curriculum ID cannot be null or empty", nameof(offerId));
            if (string.IsNullOrEmpty(scientistId)) throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));
            if (string.IsNullOrEmpty(roleId)) throw new ArgumentException("Role ID cannot be null or empty", nameof(roleId));

            using var transaction = await _context.Database.BeginTransactionAsync();
            try
            {
                var existingOffer = await _context.Set<Offers>().FindAsync(offerId);
                if (existingOffer == null) throw new InvalidOperationException("Curriculum not found");

                existingOffer.offer_name = updatedOffer.offer_name;
                existingOffer.year = updatedOffer.year;
                existingOffer.note = updatedOffer.note;
                existingOffer.propose_id = updatedOffer.propose_id;
                existingOffer.status = updatedOffer.status;
                existingOffer.updated_at = DateTime.UtcNow;

                _context.Set<Offers>().Update(existingOffer);
                await _context.SaveChangesAsync();

                var scientistOfferRole = await _context.Set<ScientistOfferRole>()
                    .FirstOrDefaultAsync(scr => scr.scientist_id == scientistId && scr.offer_id == offerId);

                if (scientistOfferRole != null)
                {
                    scientistOfferRole.role_id = roleId;
                    scientistOfferRole.updated_at = DateTime.UtcNow;
                    _context.Set<ScientistOfferRole>().Update(scientistOfferRole);
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

        // Delete a Offer and Unlink from Scientist
        public async Task<bool> DeleteOfferAndLinkFromScientistAsync(string offerId, string scientistId)
        {
            if (string.IsNullOrEmpty(offerId)) throw new ArgumentException("Curriculum ID cannot be null or empty", nameof(offerId));
            if (string.IsNullOrEmpty(scientistId)) throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));

            using var transaction = await _context.Database.BeginTransactionAsync();
            try
            {
                var scientistOfferRole = await _context.Set<ScientistOfferRole>()
                    .FirstOrDefaultAsync(scr => scr.scientist_id == scientistId && scr.offer_id == offerId);

                if (scientistOfferRole != null)
                {
                    _context.Set<ScientistOfferRole>().Remove(scientistOfferRole);
                    await _context.SaveChangesAsync();
                }

                var existingOffer = await _context.Set<Offers>().FindAsync(offerId);
                if (existingOffer != null)
                {
                    _context.Set<Offers>().Remove(existingOffer);
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
