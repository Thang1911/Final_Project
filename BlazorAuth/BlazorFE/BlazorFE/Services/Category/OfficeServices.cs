using BlazorFE.Data;
using BlazorFE.Models.Category;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services
{
    public class OfficeServices
    {
        private readonly ApplicationDbContext _context;

        public OfficeServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<Office>> GetListOffices()
        {
            return await _context.Offices.AsNoTracking().ToListAsync();
        }

        public async Task AddOffice(Office office)
        {
            _context.Offices.Add(office);
            await _context.SaveChangesAsync();
        }

        public async Task UpdateOffice(Office office)
        {
            var existingOffice = await _context.Offices.FindAsync(office.id);
            if (existingOffice != null)
            {
                existingOffice.office_name = office.office_name;
                existingOffice.address = office.address;
                existingOffice.phone = office.phone;
                existingOffice.email = office.email;
                existingOffice.office_parent = office.office_parent;
                existingOffice.updated_at = office.updated_at;

                _context.Entry(existingOffice).State = EntityState.Modified;
                await _context.SaveChangesAsync();
            }
        }

        public async Task DeleteOffice(string officeId)
        {
            var office = await _context.Offices.FindAsync(officeId);
            if (office != null)
            {
                _context.Offices.Remove(office);
                await _context.SaveChangesAsync();
            }
        }
    }
}
