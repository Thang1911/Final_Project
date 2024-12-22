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
    public class scientist_topic_roleController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public scientist_topic_roleController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/scientist_topic_role
        [HttpGet]
        public async Task<ActionResult<IEnumerable<scientist_topic_role>>> GetScientistTopicRoles()
        {
            return await _context.ScientistTopicRoles.ToListAsync();
        }

        // GET: api/scientist_topic_role/5
        [HttpGet("{id}")]
        public async Task<ActionResult<scientist_topic_role>> Getscientist_topic_role(string id)
        {
            var scientist_topic_role = await _context.ScientistTopicRoles.FindAsync(id);

            if (scientist_topic_role == null)
            {
                return NotFound();
            }

            return scientist_topic_role;
        }

        // PUT: api/scientist_topic_role/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> Putscientist_topic_role(string id, scientist_topic_role scientist_topic_role)
        {
            if (id != scientist_topic_role.id)
            {
                return BadRequest();
            }

            _context.Entry(scientist_topic_role).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!scientist_topic_roleExists(id))
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

        // POST: api/scientist_topic_role
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<scientist_topic_role>> Postscientist_topic_role(scientist_topic_role scientist_topic_role)
        {
            _context.ScientistTopicRoles.Add(scientist_topic_role);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (scientist_topic_roleExists(scientist_topic_role.id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("Getscientist_topic_role", new { id = scientist_topic_role.id }, scientist_topic_role);
        }

        // DELETE: api/scientist_topic_role/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> Deletescientist_topic_role(string id)
        {
            var scientist_topic_role = await _context.ScientistTopicRoles.FindAsync(id);
            if (scientist_topic_role == null)
            {
                return NotFound();
            }

            _context.ScientistTopicRoles.Remove(scientist_topic_role);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool scientist_topic_roleExists(string id)
        {
            return _context.ScientistTopicRoles.Any(e => e.id == id);
        }
    }
}
