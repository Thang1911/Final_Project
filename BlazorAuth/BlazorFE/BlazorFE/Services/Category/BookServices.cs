using BlazorFE.Data;
using BlazorFE.Models.Category;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services.Category
{
    public class BookServices
    {
        private readonly ApplicationDbContext _context;

        public BookServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<Book>> GetListBook()
        {
            return await _context.Books.ToListAsync();
        }
    }
}
