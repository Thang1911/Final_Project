﻿using BlazorFE.Data;
using BlazorFE.Migrations;
using BlazorFE.Models.Magazine;
using BlazorFE.Models.Offer;
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

        public async Task<List<ScientistMagazineRole>> GetAllMagazinesAsync()
        {
            var scientistMagazines = await _context.Set<ScientistMagazineRole>()
                .Include(smr => smr.Magazines)
                    .ThenInclude(m => m.Paper)
                .Include(smr => smr.Magazines)
                    .ThenInclude(m => m.MagazineScore)
                .Include(smr => smr.Role)
                .Include(str => str.Scientist)
                .OrderByDescending(or => or.updated_at)
                .ToListAsync();

            return scientistMagazines;
        }

        public async Task<Magazines> GetMagazineByIdAsync(string magazineId)
        {
            var existingMagazine = await _context.Magazines.FindAsync(magazineId);
            return existingMagazine;
        }

        public async Task<bool> UpdateMagazine(Magazines magazine)
        {
            var existingMagazine = await _context.Magazines.FindAsync(magazine.id);
            if (existingMagazine != null)
            {
                existingMagazine.magazine_name = magazine.magazine_name;
                existingMagazine.year = magazine.year;
                existingMagazine.journal = magazine.journal;
                existingMagazine.paper_id = magazine.paper_id;
                existingMagazine.magazine_scope = magazine.magazine_scope;
                existingMagazine.magazine_score_id = magazine.magazine_score_id;
                existingMagazine.updated_at = DateTime.Now;

                _context.Entry(existingMagazine).State = EntityState.Modified;
                await _context.SaveChangesAsync();
                return true;
            }
            return false;
        }

        public async Task<List<string>> GetAllJournalsAsync()
        {
            var journals = await _context.Magazines
                .Where(m => !string.IsNullOrEmpty(m.journal))
                .Select(m => new { Original = m.journal, Normalized = m.journal.Trim().ToLower() })
                .ToListAsync();

            var groupedJournals = journals
                .GroupBy(j => j.Normalized)
                .Select(g => g.First().Original)
                .ToList();

            return groupedJournals;
        }

        public async Task<ScientistMagazineRole> GetMagazineByScientistIdAsync(string magazineId, string scientistId)
        {
            if (string.IsNullOrEmpty(scientistId))
                throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));

            var scientistMagazines = await _context.Set<ScientistMagazineRole>()
                .Where(smr => smr.scientist_id == scientistId && smr.requestStatus == "Đã tham gia" && smr.magazine_id == magazineId)
                .Include(smr => smr.Magazines)
                    .ThenInclude(m => m.Paper)
                .Include(smr => smr.Role)
                .Include(str => str.Scientist)
                .FirstOrDefaultAsync();

            return scientistMagazines;
        }


        // Get Magazines by Scientist ID
        public async Task<List<ScientistMagazineRole>> GetMagazinesByScientistIdAsync(string scientistId)
        {
            if (string.IsNullOrEmpty(scientistId))
                throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));

            var scientistMagazines = await _context.Set<ScientistMagazineRole>()
                .Where(smr => smr.scientist_id == scientistId && smr.requestStatus == "Đã tham gia")
                .Include(smr => smr.Magazines)
                    .ThenInclude(m => m.Paper)
                .Include(smr => smr.Role)
                .Include(str => str.Scientist)
                .OrderByDescending(or => or.updated_at)
                .ToListAsync();

            return scientistMagazines;
        }

        public async Task<List<ScientistMagazineRole>> GetListScientistByMagazineIdAsync(string magazineId)
        {
            if (string.IsNullOrEmpty(magazineId))
                throw new ArgumentException("Magazine ID cannot be null or empty", nameof(magazineId));

            var scientistMagazines = await _context.Set<ScientistMagazineRole>()
                .Where(smr => smr.magazine_id == magazineId)
                .Include(smr => smr.Magazines)
                    .ThenInclude(m => m.Paper)
                .Include(smr => smr.Magazines)
                    .ThenInclude(m => m.MagazineScore)
                .Include(smr => smr.Role)
                .Include(str => str.Scientist)
                .OrderByDescending(or => or.updated_at)
                .ToListAsync();

            return scientistMagazines;
        }

        public async Task<List<ScientistMagazineRole>> GetScientistByMagazineIdAsync(string magazineId, bool isAccept)
        {
            if (string.IsNullOrEmpty(magazineId))
                throw new ArgumentException("Magazine ID cannot be null or empty", nameof(magazineId));

            var scientistMagazines = await _context.Set<ScientistMagazineRole>()
                .Where(smr => smr.magazine_id == magazineId && smr.requestStatus == (isAccept ? "Đã tham gia" : "Chờ duyệt"))
                .Include(smr => smr.Magazines)
                    .ThenInclude(m => m.Paper)
                .Include(smr => smr.Role)
                .Include(str => str.Scientist)
                .ToListAsync();

            return scientistMagazines;
        }

        public async Task<List<ScientistMagazineRole>> GetJoinRequestsByScientistIdAsync(string scientistId, List<string> magazinesIds)
        {
            if (string.IsNullOrEmpty(scientistId))
                throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));

            if (magazinesIds == null || !magazinesIds.Any())
                return null;

            var joinRequests = await _context.Set<ScientistMagazineRole>()
                .Where(str => str.scientist_id != scientistId
                    && str.requestStatus == "Chờ duyệt"
                    && magazinesIds.Contains(str.magazine_id))
                .Include(smr => smr.Magazines)
                    .ThenInclude(m => m.Paper)
                .Include(smr => smr.Role)
                .Include(str => str.Scientist)
                .ToListAsync();

            return joinRequests;
        }

        // Add a Magazine and Link to Scientist
        public async Task<bool> AddMagazineAndLinkToScientistAsync(Magazines newMagazine, string scientistId, string roleId, bool isJoining, bool? isEditable)
        {
            if (newMagazine == null) throw new ArgumentNullException(nameof(newMagazine));
            if (string.IsNullOrEmpty(scientistId)) throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));
            if (string.IsNullOrEmpty(roleId)) throw new ArgumentException("Role ID cannot be null or empty", nameof(roleId));

            using var transaction = await _context.Database.BeginTransactionAsync();
            try
            {
                if (!isJoining)
                {
                    await _context.Set<Magazines>().AddAsync(newMagazine);
                    await _context.SaveChangesAsync();
                }
                var scientistMagazineRole = new ScientistMagazineRole
                {
                    id = Guid.NewGuid().ToString(),
                    scientist_id = scientistId,
                    magazine_id = newMagazine.id,
                    role_id = roleId,
                    requestStatus = "Đã tham gia",
                    status = isEditable,
                    created_at = DateTime.Now,
                    updated_at = DateTime.Now
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
        public async Task<bool> UpdateMagazineAndLinkToScientistAsync(string magazineId, Magazines updatedMagazine, string scientistId, string roleId, string? requestStatus, bool? isUpdateStatus)
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
                existingMagazine.month = updatedMagazine.month;
                existingMagazine.journal = updatedMagazine.journal;
                existingMagazine.paper_id = updatedMagazine.paper_id;
                existingMagazine.magazine_scope = updatedMagazine.magazine_scope;
                existingMagazine.magazine_score_id = updatedMagazine.magazine_score_id;
                existingMagazine.volume = updatedMagazine.volume;
                existingMagazine.page_count = updatedMagazine.page_count;
                existingMagazine.citation_count = updatedMagazine.citation_count;
                existingMagazine.updated_at = DateTime.Now;

                _context.Set<Magazines>().Update(existingMagazine);
                await _context.SaveChangesAsync();

                var scientistMagazineRole = await _context.Set<ScientistMagazineRole>()
                    .FirstOrDefaultAsync(smr => smr.scientist_id == scientistId && smr.magazine_id == magazineId);

                if (scientistMagazineRole != null)
                {
                    scientistMagazineRole.role_id = roleId;
                    scientistMagazineRole.updated_at = DateTime.Now;
                    scientistMagazineRole.status = isUpdateStatus;
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
                var scientistsMagazineRole = await _context.Set<ScientistMagazineRole>()
                   .Where(smr => smr.magazine_id == magazineId).ToListAsync();

                var scientistMagazineRole = await _context.Set<ScientistMagazineRole>()
                    .FirstOrDefaultAsync(smr => smr.scientist_id == scientistId && smr.magazine_id == magazineId);

                if (scientistMagazineRole != null)
                {
                    _context.Set<ScientistMagazineRole>().Remove(scientistMagazineRole);
                    await _context.SaveChangesAsync();
                }

                var existingMagazine = await _context.Set<Magazines>().FindAsync(magazineId);
                if (existingMagazine != null && scientistsMagazineRole.Count == 1)
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

        public async Task<bool> DeleteMagazineAsync(string magazineId)
        {
            if (string.IsNullOrEmpty(magazineId)) throw new ArgumentException("Magazine ID cannot be null or empty", nameof(magazineId));

            using var transaction = await _context.Database.BeginTransactionAsync();
            try
            {
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
