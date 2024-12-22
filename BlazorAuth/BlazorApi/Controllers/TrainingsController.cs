using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using BlazorApi.Models.Category;
using BlazorApi.Services;

namespace BlazorApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TrainingsController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public TrainingsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Trainings
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Training>>> GetTrainings()
        {
            return await _context.Trainings.ToListAsync();
        }

        // GET: api/Trainings/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Training>> GetTraining(string id)
        {
            var training = await _context.Trainings.FindAsync(id);

            if (training == null)
            {
                return NotFound();
            }

            return training;
        }

        // PUT: api/Trainings/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutTraining(string id, Training training)
        {
            if (id != training.id)
            {
                return BadRequest();
            }

            _context.Entry(training).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TrainingExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Trainings
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Training>> PostTraining(Training training)
        {
            if (_context.Trainings.Any(t => t.training_name == training.training_name))
            {
                return Conflict("A training with this name already exists.");
            }

            _context.Trainings.Add(training);

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                throw;
            }

            return CreatedAtAction("GetTraining", new { id = training.id }, training);
        }


        // DELETE: api/Trainings/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteTraining(string id)
        {
            var training = await _context.Trainings.FindAsync(id);
            if (training == null)
            {
                return NotFound();
            }

            _context.Trainings.Remove(training);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool TrainingExists(string id)
        {
            return _context.Trainings.Any(e => e.id == id);
        }
    }
}
