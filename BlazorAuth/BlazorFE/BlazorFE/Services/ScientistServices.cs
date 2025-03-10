﻿using BlazorFE.Data;
using BlazorFE.Models.Scientist;
using BlazorFE.Models.User;
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

        public async Task<List<User>> GetUsersWithScientistsAsync()
        {
            var usersWithScientists = await (from user in _context.Users
                                             join scientist in _context.Scientists
                                             on user.Id equals scientist.user_id into scientistGroup
                                             from scientist in scientistGroup.DefaultIfEmpty()

                                             join login in _context.UserLogins
                                             on user.Id equals login.UserId into loginGroup
                                             from login in loginGroup.DefaultIfEmpty()

                                             join userRole in _context.UserRoles
                                             on user.Id equals userRole.UserId into userRoleGroup
                                             from userRole in userRoleGroup.DefaultIfEmpty()

                                             join role in _context.AspNetRoles
                                             on userRole.RoleId equals role.Id into roleGroup
                                             from role in roleGroup.DefaultIfEmpty()

                                             select new User
                                             {
                                                 UserId = user.Id,
                                                 Email = user.Email,
                                                 Username = user.UserName,
                                                 PasswordHash = user.PasswordHash,
                                                 EmailConfirmed = user.EmailConfirmed,
                                                 FullName = scientist != null ? scientist.profile_name : null,
                                                 Birthday = scientist != null ? scientist.birthday : null,
                                                 Gender = scientist != null ? scientist.gender : null,
                                                 Address = scientist != null ? scientist.address : null,
                                                 Phone = scientist != null ? scientist.phone : null,
                                                 ScientificTitle = scientist != null ? scientist.scientific_title : null,
                                                 LoginProvider = login != null ? login.LoginProvider : "Nội bộ",
                                                 Role = role != null ? role.Name : "User" // Lấy tên vai trò
                                             })
                                             .ToListAsync();

            return usersWithScientists;
        }


        public async Task<(string message, bool isError)> CreateUserAsync(User user, string password, string role)
        {
            var existingUser = await UserManager.FindByEmailAsync(user.Email);
            if (existingUser != null)
            {
                return ("Email đã tồn tại!", true);
            }

            var identityUser = new ApplicationUser
            {
                UserName = user.Email,
                Email = user.Email,
                EmailConfirmed = true
            };

            var result = await UserManager.CreateAsync(identityUser, password);
            if (!result.Succeeded)
            {
                return ("Tạo tài khoản thất bại!", true);
            }

            if (role != "User" && role != "Administrators")
            {
                return ("Vai trò không hợp lệ!", true);
            }

            var roleResult = await UserManager.AddToRoleAsync(identityUser, role);
            if (!roleResult.Succeeded)
            {
                return ("Gán quyền thất bại!", true);
            }

            return ("Tạo tài khoản thành công!", false);
        }



        public async Task<(string message, bool isError)> UpdateUserAsync(User user)
        {
            var identityUser = await UserManager.FindByIdAsync(user.UserId);
            if (identityUser == null)
            {
                return ("Người dùng không tồn tại!", true);
            }

            identityUser.Email = user.Email;
            identityUser.UserName = user.Email;

            var result = await UserManager.UpdateAsync(identityUser);
            if (!result.Succeeded)
            {
                return ("Cập nhật tài khoản thất bại!", true);
            }

            var currentRoles = await UserManager.GetRolesAsync(identityUser);

            if (!currentRoles.Contains(user.Role))
            {
                await UserManager.RemoveFromRolesAsync(identityUser, currentRoles);

                var roleResult = await UserManager.AddToRoleAsync(identityUser, user.Role);
                if (!roleResult.Succeeded)
                {
                    return ("Cập nhật vai trò thất bại!", true);
                }
            }

            return ("Cập nhật tài khoản thành công!", false);
        }


        public async Task<(string message, bool isError)> DeleteUserAsync(string userId)
        {
            var identityUser = await UserManager.FindByIdAsync(userId);
            if (identityUser == null)
            {
                return ("Người dùng không tồn tại!", true);
            }

            var result = await UserManager.DeleteAsync(identityUser);
            if (!result.Succeeded)
            {
                return ("Xóa tài khoản thất bại!", true);
            }

            return ("Xóa tài khoản thành công!", false);
        }

        public async Task<(string message, bool isError)> ChangePasswordWithoutOldPasswordAsync(string newPassword, string email)
        {
            var user = await UserManager.FindByEmailAsync(email);
            if (user == null)
            {
                return ("Người dùng không tồn tại!", true);
            }

            var token = await UserManager.GeneratePasswordResetTokenAsync(user);
            var result = await UserManager.ResetPasswordAsync(user, token, newPassword);

            if (!result.Succeeded)
            {
                return ("Cập nhật mật khẩu thất bại!", true);
            }

            return ("Cập nhật mật khẩu thành công!", false);
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
