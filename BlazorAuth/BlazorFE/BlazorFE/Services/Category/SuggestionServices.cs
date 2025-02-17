using BlazorFE.Data;
using BlazorFE.Models.Category;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services.Category
{
    public class SuggestionServices
    {
        private readonly ApplicationDbContext _context;

        public SuggestionServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<Suggesttion>> GetListSuggestion()
        {
            return await _context.Suggesttions.AsNoTracking().ToListAsync();
        }

        public async Task AddSuggestion(Suggesttion suggestion)
        {
            _context.Suggesttions.Add(suggestion);
            await _context.SaveChangesAsync();
        }

        public async Task UpdateSuggestion(Suggesttion suggestion)
        {
            var existingSuggestion = await _context.Suggesttions.FindAsync(suggestion.suggestion_id);
            if (existingSuggestion != null)
            {
                existingSuggestion.suggestion_name = suggestion.suggestion_name;
                existingSuggestion.updated_at = suggestion.updated_at;

                _context.Entry(existingSuggestion).State = EntityState.Modified;
                await _context.SaveChangesAsync();
            }
        }

        public async Task DeleteSuggestion(string suggestionId)
        {
            var suggestion = await _context.Suggesttions.FindAsync(suggestionId);
            if (suggestion != null)
            {
                _context.Suggesttions.Remove(suggestion);
                await _context.SaveChangesAsync();
            }
        }
    }
}
