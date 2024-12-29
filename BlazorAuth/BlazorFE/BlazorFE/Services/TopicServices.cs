using BlazorFE.Data;
using BlazorFE.Models.Topic;
using BlazorFE.Models.Scientist;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Http.HttpResults;

namespace BlazorFE.Services
{
    public class TopicServices
    {
        private readonly ApplicationDbContext _context;

        public TopicServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<scientist_topic_role>> GetTopicsByScientistIdAsync(string scientistId)
        {
            if (string.IsNullOrEmpty(scientistId))
                throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));

            var scientistTopics = await _context.Set<scientist_topic_role>()
                .Where(str => str.scientist_id == scientistId)
                .Include(str => str.Topics)
                .Include(str => str.Role)
                .ToListAsync();

            return scientistTopics;
        }

        public async Task<Boolean> AddTopicAndLinkToScientistAsync(Topics newTopic, string scientistId, string roleId)
        {
            if (newTopic == null) throw new ArgumentNullException(nameof(newTopic));
            if (string.IsNullOrEmpty(scientistId)) throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));
            if (string.IsNullOrEmpty(roleId)) throw new ArgumentException("Role ID cannot be null or empty", nameof(roleId));

            using var transaction = await _context.Database.BeginTransactionAsync();
            try
            {
                await _context.Set<Topics>().AddAsync(newTopic);
                await _context.SaveChangesAsync();

                var scientistTopicRole = new scientist_topic_role
                {
                    id = Guid.NewGuid().ToString(),
                    scientist_id = scientistId,
                    topic_id = newTopic.id,
                    role_id = roleId,
                    created_at = DateTime.UtcNow,
                    updated_at = DateTime.UtcNow
                };

                await _context.Set<scientist_topic_role>().AddAsync(scientistTopicRole);
                await _context.SaveChangesAsync();

                await transaction.CommitAsync();
                return true;
            }
            catch
            {
                await transaction.RollbackAsync();
                return false;
                throw;
            }
        }

        public async Task<Boolean> UpdateTopicAndLinkToScientistAsync(string topicId, Topics updatedTopic, string scientistId, string roleId)
        {
            if (updatedTopic == null) throw new ArgumentNullException(nameof(updatedTopic));
            if (string.IsNullOrEmpty(topicId)) throw new ArgumentException("Topic ID cannot be null or empty", nameof(topicId));
            if (string.IsNullOrEmpty(scientistId)) throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));
            if (string.IsNullOrEmpty(roleId)) throw new ArgumentException("Role ID cannot be null or empty", nameof(roleId));

            using var transaction = await _context.Database.BeginTransactionAsync();
            try
            {
                var existingTopic = await _context.Set<Topics>().FindAsync(topicId);
                if (existingTopic == null) throw new InvalidOperationException("Topic not found");

                existingTopic.topic_name = updatedTopic.topic_name;
                existingTopic.result = updatedTopic.result;
                existingTopic.lvtopic_id = updatedTopic.lvtopic_id;
                existingTopic.start_date = updatedTopic.start_date;
                existingTopic.end_date = updatedTopic.end_date;
                existingTopic.updated_at = DateTime.UtcNow;

                _context.Set<Topics>().Update(existingTopic);
                await _context.SaveChangesAsync();

                var scientistTopicRole = await _context.Set<scientist_topic_role>()
                    .FirstOrDefaultAsync(str => str.scientist_id == scientistId && str.topic_id == topicId);

                if (scientistTopicRole != null)
                {
                    scientistTopicRole.role_id = roleId;
                    scientistTopicRole.updated_at = DateTime.UtcNow;
                    _context.Set<scientist_topic_role>().Update(scientistTopicRole);
                    await _context.SaveChangesAsync();
                }

                await transaction.CommitAsync();
                return true;
            }
            catch
            {
                await transaction.RollbackAsync();
                return false;
                throw;
            }
        }

        public async Task<Boolean> DeleteTopicAndLinkFromScientistAsync(string topicId, string scientistId)
        {
            if (string.IsNullOrEmpty(topicId)) throw new ArgumentException("Topic ID cannot be null or empty", nameof(topicId));
            if (string.IsNullOrEmpty(scientistId)) throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));

            using var transaction = await _context.Database.BeginTransactionAsync();
            try
            {
                var scientistTopicRole = await _context.Set<scientist_topic_role>()
                    .FirstOrDefaultAsync(str => str.scientist_id == scientistId && str.topic_id == topicId);

                if (scientistTopicRole != null)
                {
                    _context.Set<scientist_topic_role>().Remove(scientistTopicRole);
                    await _context.SaveChangesAsync();
                }

                var existingTopic = await _context.Set<Topics>().FindAsync(topicId);
                if (existingTopic != null)
                {
                    _context.Set<Topics>().Remove(existingTopic);
                    await _context.SaveChangesAsync();
                }

                await transaction.CommitAsync();
                return true;
            }
            catch
            {
                await transaction.RollbackAsync();
                return false;
                throw;
            }
        }
    }
}
