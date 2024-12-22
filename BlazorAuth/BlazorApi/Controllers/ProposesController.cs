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
    public class ProposesController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public ProposesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Proposes
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Propose>>> GetProposes()
        {
            return await _context.Proposes.ToListAsync();
        }

        // GET: api/Proposes/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Propose>> GetProposes(string id)
        {
            var proposes = await _context.Proposes.FindAsync(id);

            if (proposes == null)
            {
                return NotFound();
            }

            return proposes;
        }

        // PUT: api/Proposes/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutProposes(string id, Propose proposes)
        {
            if (id != proposes.id)
            {
                return BadRequest();
            }

            _context.Entry(proposes).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ProposesExists(id))
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

        // POST: api/Proposes
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Propose>> PostProposes(Propose proposes)
        {
            _context.Proposes.Add(proposes);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (ProposesExists(proposes.id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetProposes", new { id = proposes.id }, proposes);
        }

        // DELETE: api/Proposes/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteProposes(string id)
        {
            var proposes = await _context.Proposes.FindAsync(id);
            if (proposes == null)
            {
                return NotFound();
            }

            _context.Proposes.Remove(proposes);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool ProposesExists(string id)
        {
            return _context.Proposes.Any(e => e.id == id);
        }
    }
}
