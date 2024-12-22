using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using BlazorApi.Models.Topic;
using BlazorApi.Services;

namespace BlazorApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TopicsController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public TopicsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Topics
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Topics>>> GetTopics()
        {
            return await _context.Topics.ToListAsync();
        }

        // GET: api/Topics/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Topics>> GetTopics(string id)
        {
            var topics = await _context.Topics.FindAsync(id);

            if (topics == null)
            {
                return NotFound();
            }

            return topics;
        }

        // PUT: api/Topics/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutTopics(string id, Topics topics)
        {
            if (id != topics.id)
            {
                return BadRequest();
            }

            _context.Entry(topics).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TopicsExists(id))
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

        // POST: api/Topics
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Topics>> PostTopics(Topics topics)
        {
            _context.Topics.Add(topics);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (TopicsExists(topics.id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetTopics", new { id = topics.id }, topics);
        }

        // DELETE: api/Topics/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteTopics(string id)
        {
            var topics = await _context.Topics.FindAsync(id);
            if (topics == null)
            {
                return NotFound();
            }

            _context.Topics.Remove(topics);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool TopicsExists(string id)
        {
            return _context.Topics.Any(e => e.id == id);
        }
    }
}
