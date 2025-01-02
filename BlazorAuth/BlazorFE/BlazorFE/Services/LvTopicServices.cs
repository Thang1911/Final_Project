using BlazorFE.Data;
using BlazorFE.Models.Category;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services
{
    public class LvTopicServices
    {
        private readonly ApplicationDbContext _context;

        public LvTopicServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<LvTopics>> GetListLvTopic()
        {
            return await _context.LvTopics.ToListAsync();
        }
    }
}
