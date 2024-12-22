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
    public class LvTopicsController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public LvTopicsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/LvTopics
        [HttpGet]
        public async Task<ActionResult<IEnumerable<LvTopics>>> GetLvTopics()
        {
            return await _context.LvTopics.ToListAsync();
        }

        // GET: api/LvTopics/5
        [HttpGet("{id}")]
        public async Task<ActionResult<LvTopics>> GetLvTopics(string id)
        {
            var lvTopics = await _context.LvTopics.FindAsync(id);

            if (lvTopics == null)
            {
                return NotFound();
            }

            return lvTopics;
        }

        // PUT: api/LvTopics/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutLvTopics(string id, LvTopics lvTopics)
        {
            if (id != lvTopics.id)
            {
                return BadRequest();
            }

            _context.Entry(lvTopics).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!LvTopicsExists(id))
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

        // POST: api/LvTopics
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<LvTopics>> PostLevelTopic(LvTopics levelTopic)
        {
            if (_context.LvTopics.Any(t => t.lvtopic_name == levelTopic.lvtopic_name))
            {
                return Conflict("A LevelTopic with this name already exists.");
            }

            _context.LvTopics.Add(levelTopic);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                throw;
            }

            return CreatedAtAction("GetLevelTopic", new { id = levelTopic.id }, levelTopic);
        }

        // DELETE: api/LvTopics/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteLvTopics(string id)
        {
            var lvTopics = await _context.LvTopics.FindAsync(id);
            if (lvTopics == null)
            {
                return NotFound();
            }

            _context.LvTopics.Remove(lvTopics);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool LvTopicsExists(string id)
        {
            return _context.LvTopics.Any(e => e.id == id);
        }
    }
}
