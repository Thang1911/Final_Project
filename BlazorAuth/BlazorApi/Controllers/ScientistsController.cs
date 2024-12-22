using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using BlazorApi.Models.Scientist;
using BlazorApi.Services;

namespace BlazorApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ScientistsController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public ScientistsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Scientists
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Scientist>>> GetScientists()
        {
            return await _context.Scientists.ToListAsync();
        }

        // GET: api/Scientists/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Scientist>> GetScientist(string id)
        {
            var scientist = await _context.Scientists.FindAsync(id);

            if (scientist == null)
            {
                return NotFound();
            }

            return scientist;
        }

        // PUT: api/Scientists/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutScientist(string id, Scientist scientist)
        {
            if (id != scientist.id)
            {
                return BadRequest();
            }

            _context.Entry(scientist).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ScientistExists(id))
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

        // POST: api/Scientists
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Scientist>> PostScientist(Scientist scientist)
        {
            _context.Scientists.Add(scientist);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (ScientistExists(scientist.id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetScientist", new { id = scientist.id }, scientist);
        }

        // DELETE: api/Scientists/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteScientist(string id)
        {
            var scientist = await _context.Scientists.FindAsync(id);
            if (scientist == null)
            {
                return NotFound();
            }

            _context.Scientists.Remove(scientist);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool ScientistExists(string id)
        {
            return _context.Scientists.Any(e => e.id == id);
        }
    }
}
