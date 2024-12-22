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
    public class ArtopicsController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public ArtopicsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Artopics
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Artopic>>> GetArTopics()
        {
            return await _context.ArTopics.ToListAsync();
        }

        // GET: api/Artopics/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Artopic>> GetArtopic(string id)
        {
            var artopic = await _context.ArTopics.FindAsync(id);

            if (artopic == null)
            {
                return NotFound();
            }

            return artopic;
        }

        // PUT: api/Artopics/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutArtopic(string id, Artopic artopic)
        {
            if (id != artopic.id)
            {
                return BadRequest();
            }

            _context.Entry(artopic).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ArtopicExists(id))
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

        // POST: api/Artopics
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Artopic>> PostArtopic(Artopic artopic)
        {
            _context.ArTopics.Add(artopic);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (ArtopicExists(artopic.id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetArtopic", new { id = artopic.id }, artopic);
        }

        // DELETE: api/Artopics/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteArtopic(string id)
        {
            var artopic = await _context.ArTopics.FindAsync(id);
            if (artopic == null)
            {
                return NotFound();
            }

            _context.ArTopics.Remove(artopic);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool ArtopicExists(string id)
        {
            return _context.ArTopics.Any(e => e.id == id);
        }
    }
}
