using BlazorFE.Data;
using BlazorFE.Models.Category;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services.Category
{
    public class TrainingServices
    {
        private readonly ApplicationDbContext _context;

        public TrainingServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<Training>> GetListTraining()
        {
            return await _context.Trainings.AsNoTracking().ToListAsync();
        }

        public async Task AddTraining(Training training)
        {
            _context.Trainings.Add(training);
            await _context.SaveChangesAsync();
        }

        public async Task UpdateTraining(Training training)
        {
            var existingTraining = await _context.Trainings.FindAsync(training.id);
            if (existingTraining != null)
            {
                existingTraining.training_name = training.training_name;
                existingTraining.updated_at = training.updated_at;

                _context.Entry(existingTraining).State = EntityState.Modified;
                await _context.SaveChangesAsync();
            }
        }

        public async Task DeleteTraining(string trainingId)
        {
            var training = await _context.Trainings.FindAsync(trainingId);
            if (training != null)
            {
                _context.Trainings.Remove(training);
                await _context.SaveChangesAsync();
            }
        }
    }
}
