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

        public async Task<List<ScientistOfferRole>> GetAllOffersAsync()
        {
            var scientistOffers = await _context.Set<ScientistOfferRole>()
                .Include(scr => scr.Offer)
                    .ThenInclude(o => o.Propose)
                .Include(scr => scr.Role)
                .Include(scr => scr.Scientist)
                .OrderByDescending(or => or.updated_at)
                .ToListAsync();

            return scientistOffers;
        }

        public async Task<Offers> GetOfferByIdAsync(string offerId)
        {
            var existingOffer = await _context.Offers.FindAsync(offerId);
            return existingOffer;
        }

        public async Task<bool> UpdateOffer(Offers offer)
        {
            var existingOffer = await _context.Offers.FindAsync(offer.id);
            if (existingOffer != null)
            {
                existingOffer.offer_name = offer.offer_name;
                existingOffer.year = offer.year;
                existingOffer.note = offer.note;
                existingOffer.propose_id = offer.propose_id;
                existingOffer.status = offer.status;
                existingOffer.updated_at = DateTime.Now;

                _context.Entry(existingOffer).State = EntityState.Modified;
                await _context.SaveChangesAsync();
                return true;
            }
            return false;
        }

        // Get Offers by Scientist ID
        public async Task<List<ScientistOfferRole>> GetOffersByScientistIdAsync(string scientistId)
        {
            if (string.IsNullOrEmpty(scientistId))
                throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));

            var scientistOffers = await _context.Set<ScientistOfferRole>()
                .Where(scr => scr.scientist_id == scientistId && scr.requestStatus == "Đã tham gia")
                .Include(scr => scr.Offer)
                    .ThenInclude(o => o.Propose)
                .Include(scr => scr.Role)
                .Include(scr => scr.Scientist)
                .OrderByDescending(or => or.updated_at)
                .ToListAsync();

            return scientistOffers;
        }

        public async Task <ScientistOfferRole> GetOfferByScientistIdAsync(string offerId, string scientistId)
        {
            var scientistOffer = await _context.Set<ScientistOfferRole>()
                .Where(scr => scr.scientist_id == scientistId && scr.offer_id == offerId)
                .Include(scr => scr.Offer)
                    .ThenInclude(o => o.Propose)
                .Include(scr => scr.Role)
                .Include(scr => scr.Scientist)
                .FirstOrDefaultAsync();

            return scientistOffer;
        }

        public async Task<List<ScientistOfferRole>> GetListScientistByOfferIdAsync(string offerId)
        {
            var scientistMagazines = await _context.Set<ScientistOfferRole>()
                .Where(scr => scr.offer_id == offerId && scr.requestStatus == "Đã tham gia")
                .Include(scr => scr.Offer)
                    .ThenInclude(o => o.Propose)
                .Include(scr => scr.Role)
                .Include(scr => scr.Scientist)
                .OrderByDescending(or => or.updated_at)
                .ToListAsync();

            return scientistMagazines;
        }

        public async Task<List<ScientistOfferRole>> GetRequesOfferAsync(string scientistId, bool isJoining)
        {
            if (string.IsNullOrEmpty(scientistId))
                throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));

            const string ProjectLeaderRole = "Chủ nhiệm dự án";

            var query = _context.Set<ScientistOfferRole>().AsQueryable();

            if (isJoining)
            {
                query = query.Where(str => str.scientist_id != scientistId
                                           && str.Role != null
                                           && str.Role.role_name == ProjectLeaderRole);
            }
            else
            {
                query = query.Where(str => str.scientist_id == scientistId);
            }

            var scientistCurriculum = await query
                .Include(scr => scr.Offer)
                    .ThenInclude(o => o.Propose)
                .Include(scr => scr.Role)
                .Include(scr => scr.Scientist)
                .ToListAsync();

            return scientistCurriculum;
        }

        // Add a Offer and Link to Scientist
        public async Task<bool> AddOfferAndLinkToScientistAsync(Offers newOffer, string scientistId, string roleId, bool isJoining, bool? isEditable)
        {
            if (newOffer == null) throw new ArgumentNullException(nameof(newOffer));
            if (string.IsNullOrEmpty(scientistId)) throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));
            if (string.IsNullOrEmpty(roleId)) throw new ArgumentException("Role ID cannot be null or empty", nameof(roleId));

            using var transaction = await _context.Database.BeginTransactionAsync();
            try
            {
                if (!isJoining) { 
                    await _context.Set<Offers>().AddAsync(newOffer);
                    await _context.SaveChangesAsync();
                }
                var scientistOfferRole = new ScientistOfferRole
                {
                    id = Guid.NewGuid().ToString(),
                    scientist_id = scientistId,
                    offer_id = newOffer.id,
                    role_id = roleId,
                    requestStatus = "Đã tham gia",
                    status = isEditable,
                    created_at = DateTime.Now,
                    updated_at = DateTime.Now
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
        public async Task<bool> UpdateOfferAndLinkToScientistAsync(string offerId, Offers updatedOffer, string scientistId, string roleId,string? requestStatus, bool? isUpdateStatus)
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
                existingOffer.updated_at = DateTime.Now;

                _context.Set<Offers>().Update(existingOffer);
                await _context.SaveChangesAsync();

                var scientistOfferRole = await _context.Set<ScientistOfferRole>()
                    .FirstOrDefaultAsync(scr => scr.scientist_id == scientistId && scr.offer_id == offerId);

                if (scientistOfferRole != null)
                {
                    scientistOfferRole.role_id = roleId;
                    scientistOfferRole.status = isUpdateStatus;
                    scientistOfferRole.updated_at = DateTime.Now;
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
