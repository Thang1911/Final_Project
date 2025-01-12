using BlazorFE.Data;
using BlazorFE.Models.Category;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services
{
    public class RoleServices
    {
        private readonly ApplicationDbContext _context;

        public RoleServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<Role>> GetListRole(string? roleType)
        {
            if (!string.IsNullOrEmpty(roleType))
            {
                return await _context.Roles.Where(r => r.role_type == roleType).ToListAsync();
            }
            return await _context.Roles.AsNoTracking().ToListAsync();
        }

        public async Task AddRole(Role role)
        {
            _context.Roles.Add(role);
            await _context.SaveChangesAsync();
        }

        public async Task UpdateRole(Role role)
        {
            var existingRole = await _context.Roles.FindAsync(role.id);
            if (existingRole != null)
            {
                existingRole.role_name = role.role_name;
                existingRole.role_type = role.role_type;
                existingRole.updated_at = role.updated_at;

                _context.Entry(existingRole).State = EntityState.Modified;
                await _context.SaveChangesAsync();
            }
        }

        public async Task DeleteRole(string roleId)
        {
            var role = await _context.Roles.FindAsync(roleId);
            if (role != null)
            {
                _context.Roles.Remove(role);
                await _context.SaveChangesAsync();
            }
        }
    }
}
