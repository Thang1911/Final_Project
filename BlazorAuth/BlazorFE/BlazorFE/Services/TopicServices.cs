using BlazorFE.Data;
using BlazorFE.Models.Topic;
using BlazorFE.Models.Scientist;
using Microsoft.EntityFrameworkCore;
using BlazorFE.Models.Category;

namespace BlazorFE.Services
{
    public class TopicServices
    {
        private readonly ApplicationDbContext _context;

        public TopicServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<scientist_topic_role>> GetAllTopicAsync()
        {
            var scientistTopics = await _context.Set<scientist_topic_role>()
                .Include(str => str.Topics)
                    .ThenInclude(str => str.LvTopics)
                .Include(str => str.Role)
                .Include(str => str.Scientist)
                .OrderByDescending(or => or.updated_at)
                .ToListAsync();

            return scientistTopics;
        }

        public async Task<Topics> GetTopicByIdAsync(string TopicId)
        {
            var topic = await _context.Topics.FirstOrDefaultAsync(t => t.id == TopicId);

            return topic;
        }

        public async Task<bool> UpdateTopic(Topics topics)
        {
            var existingTopic = await _context.Topics.FindAsync(topics.id);
            if (existingTopic != null)
            {
                existingTopic.topic_name = topics.topic_name;
                existingTopic.result = topics.result;
                existingTopic.lvtopic_id = topics.lvtopic_id;
                existingTopic.start_date = topics.start_date;
                existingTopic.end_date = topics.end_date;
                existingTopic.updated_at = DateTime.Now;

                _context.Entry(existingTopic).State = EntityState.Modified;
                await _context.SaveChangesAsync();
                return true;
            }
            return false;
        }

        public async Task<scientist_topic_role> GetScientistTopicByIdAsync(string topicId, string scientistId)
        {
            if (string.IsNullOrEmpty(scientistId))
                throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));

            var scientistTopic = await _context.Set<scientist_topic_role>()
                .Where(str => str.scientist_id == scientistId && str.requestStatus == "Đã tham gia" && str.topic_id == topicId)
                .Include(str => str.Topics)
                    .ThenInclude(str => str.LvTopics)
                .Include(str => str.Role)
                .Include(str => str.Scientist)
                .FirstOrDefaultAsync();

            return scientistTopic;
        }

        public async Task<List<scientist_topic_role>> GetProjectsByScientistIdAsync(string scientistId)
        {
            if (string.IsNullOrEmpty(scientistId))
                throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));

            var scientistTopics = await _context.Set<scientist_topic_role>()
                .Where(str => str.scientist_id == scientistId && str.requestStatus == "Đã tham gia")
                .Include(str => str.Topics)
                    .ThenInclude(str => str.LvTopics)
                .Include(str => str.Role)
                .Include(str => str.Scientist)
                .OrderByDescending(or => or.updated_at)
                .ToListAsync();

            return scientistTopics;
        }

        public async Task<List<scientist_topic_role>> GetJoinRequestsByScientistIdAsync(string scientistId)
        {
            if (string.IsNullOrEmpty(scientistId))
                throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));

            var joinRequests = await _context.Set<scientist_topic_role>()
                .Where(str => str.scientist_id == scientistId
                    && str.requestStatus == "Chờ duyệt")
                .Include(str => str.Topics)
                    .ThenInclude(str => str.LvTopics)
                .Include(str => str.Role)
                .Include(str => str.Scientist)
                .ToListAsync();

            return joinRequests;
        }

        public async Task<List<scientist_topic_role>> GetListScientistByTopicIdAsync(string topicId)
        {
            if (string.IsNullOrEmpty(topicId))
                throw new ArgumentException("Magazine ID cannot be null or empty", nameof(topicId));

            var scientistTopics = await _context.Set<scientist_topic_role>()
               .Where(str => str.topic_id == topicId)
                .Include(str => str.Topics)
                    .ThenInclude(st => st.LvTopics)
                .Include(str => str.Role)
                .Include(str => str.Scientist)
                .OrderByDescending(or => or.updated_at)
                .ToListAsync();

            return scientistTopics;
        }

        public async Task<List<scientist_topic_role>> GetRequestTopicAsync(string scientistId, bool isJoining)
        {
            if (string.IsNullOrEmpty(scientistId))
                throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));

            var query = _context.Set<scientist_topic_role>().AsQueryable();

            if (isJoining)
            {
                query = query.Where(str => str.scientist_id != scientistId
                                           && str.Role != null);
            }
            else
            {
                query = query.Where(str => str.scientist_id == scientistId);
            }

            var scientistTopics = await query
                .Include(str => str.Topics)
                    .ThenInclude(str => str.LvTopics)
                .Include(str => str.Role)
                .Include(str => str.Scientist)
                .ToListAsync();

            return scientistTopics;
        }

        public async Task<bool> AddTopicAndLinkToScientistAsync(Topics newTopic, string scientistId, string roleId, bool isJoining, bool? isEditable)
        {
            if (newTopic == null) throw new ArgumentNullException(nameof(newTopic));
            if (string.IsNullOrEmpty(scientistId)) throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));
            if (string.IsNullOrEmpty(roleId)) throw new ArgumentException("Role ID cannot be null or empty", nameof(roleId));

            var existingTopic = await _context.Set<Topics>().FirstOrDefaultAsync(t => t.topic_name == newTopic.topic_name);

            if (existingTopic != null)
            {
                return false;
            }

            using var transaction = await _context.Database.BeginTransactionAsync();
            try
            {
                if(!isJoining) { 
                    await _context.Set<Topics>().AddAsync(newTopic);
                    await _context.SaveChangesAsync();
                }
                var scientistTopicRole = new scientist_topic_role
                {
                    id = Guid.NewGuid().ToString(),
                    scientist_id = scientistId,
                    topic_id = newTopic.id,
                    role_id = roleId,
                    status = isEditable,
                    requestStatus = "Đã tham gia",
                    created_at = DateTime.Now,
                    updated_at = DateTime.Now
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

        public async Task<bool> UpdateTopicAndLinkToScientistAsync(string topicId, Topics updatedTopic, string scientistId, string roleId, string? requestStatus, bool? isUpdateStatus)
        {
            if (updatedTopic == null) throw new ArgumentNullException(nameof(updatedTopic));
            if (string.IsNullOrEmpty(topicId)) throw new ArgumentException("Topic ID cannot be null or empty", nameof(topicId));
            if (string.IsNullOrEmpty(scientistId)) throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));
            if (string.IsNullOrEmpty(roleId)) throw new ArgumentException("Role ID cannot be null or empty", nameof(roleId));

            var existingTopicName = await _context.Set<Topics>().FirstOrDefaultAsync(t => t.topic_name == updatedTopic.topic_name);

            if (existingTopicName != null)
            {
                return false;
            }

            using var transaction = await _context.Database.BeginTransactionAsync();
            try
            {
                var existingTopic = await _context.Set<Topics>().FindAsync(topicId);
                if (existingTopic == null) throw new InvalidOperationException("Topic not found");

                existingTopic.topic_name = updatedTopic.topic_name;
                existingTopic.topicId = updatedTopic.topicId;
                existingTopic.result = updatedTopic.result;
                existingTopic.lvtopic_id = updatedTopic.lvtopic_id;
                existingTopic.start_date = updatedTopic.start_date;
                existingTopic.end_date = updatedTopic.end_date;
                existingTopic.updated_at = DateTime.Now;

                _context.Set<Topics>().Update(existingTopic);
                await _context.SaveChangesAsync();

                var scientistTopicRole = await _context.Set<scientist_topic_role>()
                    .FirstOrDefaultAsync(str => str.scientist_id == scientistId && str.topic_id == topicId);

                if (scientistTopicRole != null)
                {
                    scientistTopicRole.role_id = roleId;
                    scientistTopicRole.updated_at = DateTime.Now;
                    scientistTopicRole.status = isUpdateStatus;

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

        public async Task<bool> DeleteTopicAndLinkFromScientistAsync(string topicId, string scientistId)
        {
            if (string.IsNullOrEmpty(topicId)) throw new ArgumentException("Topic ID cannot be null or empty", nameof(topicId));
            if (string.IsNullOrEmpty(scientistId)) throw new ArgumentException("Scientist ID cannot be null or empty", nameof(scientistId));

            using var transaction = await _context.Database.BeginTransactionAsync();
            try
            {
                var scientistsTopicRole = await _context.Set<scientist_topic_role>()
                    .Where(str => str.topic_id == topicId).ToListAsync();

                var scientistTopicRole = await _context.Set<scientist_topic_role>()
                    .FirstOrDefaultAsync(str => str.scientist_id == scientistId && str.topic_id == topicId);

                if (scientistTopicRole != null)
                {
                    _context.Set<scientist_topic_role>().Remove(scientistTopicRole);
                    await _context.SaveChangesAsync();
                }

                var existingTopic = await _context.Set<Topics>().FindAsync(topicId);
                if (existingTopic != null && scientistsTopicRole.Count == 1)
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

        public async Task<bool> DeleteTopicAsync(string topicId)
        {
            if (string.IsNullOrEmpty(topicId)) throw new ArgumentException("Topic ID cannot be null or empty", nameof(topicId));

            using var transaction = await _context.Database.BeginTransactionAsync();
            try
            {
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
