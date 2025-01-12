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

        public async Task<List<LvTopics>> GetListLvTopics()
        {
            return await _context.LvTopics.AsNoTracking().ToListAsync();
        }

        public async Task AddLvTopic(LvTopics lvTopic)
        {
            _context.LvTopics.Add(lvTopic);
            await _context.SaveChangesAsync();
        }

        public async Task UpdateLvTopic(LvTopics lvTopic)
        {
            var existingLvTopic = await _context.LvTopics.FindAsync(lvTopic.id);
            if (existingLvTopic != null)
            {
                existingLvTopic.lvtopic_name = lvTopic.lvtopic_name;
                existingLvTopic.category = lvTopic.category;
                existingLvTopic.updated_at = lvTopic.updated_at;

                _context.Entry(existingLvTopic).State = EntityState.Modified;
                await _context.SaveChangesAsync();
            }
        }

        public async Task DeleteLvTopic(string lvTopicId)
        {
            var lvTopic = await _context.LvTopics.FindAsync(lvTopicId);
            if (lvTopic != null)
            {
                _context.LvTopics.Remove(lvTopic);
                await _context.SaveChangesAsync();
            }
        }
    }
}
