﻿using BlazorFE.Data;
using BlazorFE.Models.Scientist;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services
{
    public class ProfileServices
    {
        private readonly ApplicationDbContext _context;

        public ProfileServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<Scientist> GetProfileAsync(string userId)
        {
            return await _context.Scientists
                                 .Where(s => s.user_id == userId)
                                 .FirstOrDefaultAsync();
        }

        public async Task UpdateProfileAsync(Scientist updatedProfile)
        {
            _context.Scientists.Update(updatedProfile);
            await _context.SaveChangesAsync();
        }

        public async Task AddProfileAsync(Scientist newProfile)
        {
            try
            {
                _context.Scientists.Add(newProfile);
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException ex)
            {
                Console.WriteLine($"Database update error: {ex.Message}");
                throw new Exception("An error occurred while adding the profile. Please try again later.", ex);
            }
        }
    }
}
