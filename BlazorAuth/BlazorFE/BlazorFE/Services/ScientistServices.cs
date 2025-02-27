using BlazorFE.Data;
using BlazorFE.Models.Scientist;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;


namespace BlazorFE.Services
{
    public class ScientistServices
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<ApplicationUser> UserManager;

        public ScientistServices(ApplicationDbContext context, UserManager<ApplicationUser> userManager)
        {
            _context = context;
            UserManager = userManager;
        }

        public async Task<List<Scientist>> GetAllScientistIdAsync()
        {
            var allScientist = await _context.Set<Scientist>()
                .Include(sct => sct.Degree)
                .Include(sct => sct.Office)
                .ToListAsync();

            return allScientist;
        }

        public async Task<List<Scientist>> GetAllScientistByOfficeIdAsync(string officeId)
        {
            var allScientist = await _context.Set<Scientist>()
                .Where(sct => sct.office_id == officeId)
                .Include(sct => sct.Degree)
                .Include(sct => sct.Office)
                .ToListAsync();

            return allScientist;
        }

        public async Task<(string message, bool isError)> ResetPasswordAsync(string currentPassword, string newPassword, string email)
        {
            var user = await UserManager.FindByEmailAsync(email);
            if (user == null)
            {
                return ("Người dùng không tồn tại!", true);
            }

            var result = await UserManager.ChangePasswordAsync(user, currentPassword, newPassword);

            if (!result.Succeeded)
            {
                return ("Đổi mật khẩu thất bại! Kiểm tra lại mật khẩu hiện tại.", true);
            }

            return ("Đổi mật khẩu thành công!", false);
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
                if (!string.IsNullOrEmpty(newProfile.degree_id))
                {
                    var existingDegree = await _context.Degrees.FindAsync(newProfile.degree_id);
                    if (existingDegree == null)
                    {
                        throw new Exception($"Degree with ID '{newProfile.degree_id}' does not exist.");
                    }
                }

                if (!string.IsNullOrEmpty(newProfile.office_id))
                {
                    var existingOffice = await _context.Offices.FindAsync(newProfile.office_id);
                    if (existingOffice == null)
                    {
                        throw new Exception($"Office with ID '{newProfile.office_id}' does not exist.");
                    }
                }

                _context.Scientists.Add(newProfile);
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException ex)
            {
                Console.WriteLine($"Database update error: {ex.Message}");
                throw new Exception("An error occurred while adding the profile. Please try again later.", ex);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
                throw;
            }
        }

    }
}
