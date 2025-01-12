using BlazorFE.Data;
using BlazorFE.Models.Category;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services
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
            return await _context.Books.AsNoTracking().ToListAsync();
        }

        public async Task AddBook(Book book)
        {
            _context.Books.Add(book);
            await _context.SaveChangesAsync();
        }

        public async Task UpdateBook(Book book)
        {
            var existingBook = await _context.Books.FindAsync(book.id);
            if (existingBook != null)
            {
                existingBook.book_name = book.book_name;
                existingBook.updated_at = book.updated_at;

                _context.Entry(existingBook).State = EntityState.Modified;
                await _context.SaveChangesAsync();
            }
        }

        public async Task DeleteBook(string bookId)
        {
            var book = await _context.Books.FindAsync(bookId);
            if (book != null)
            {
                _context.Books.Remove(book);
                await _context.SaveChangesAsync();
            }
        }
    }
}
