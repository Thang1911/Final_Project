using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using BlazorApi.Models.Magazine;
using BlazorApi.Services;

namespace BlazorApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MagazinesController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public MagazinesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Magazines
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Magazines>>> GetMagazines()
        {
            return await _context.Magazines.ToListAsync();
        }

        // GET: api/Magazines/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Magazines>> GetMagazines(string id)
        {
            var magazines = await _context.Magazines.FindAsync(id);

            if (magazines == null)
            {
                return NotFound();
            }

            return magazines;
        }

        // PUT: api/Magazines/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutMagazines(string id, Magazines magazines)
        {
            if (id != magazines.id)
            {
                return BadRequest();
            }

            _context.Entry(magazines).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!MagazinesExists(id))
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

        // POST: api/Magazines
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Magazines>> PostMagazines(Magazines magazines)
        {
            _context.Magazines.Add(magazines);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (MagazinesExists(magazines.id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetMagazines", new { id = magazines.id }, magazines);
        }

        // DELETE: api/Magazines/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteMagazines(string id)
        {
            var magazines = await _context.Magazines.FindAsync(id);
            if (magazines == null)
            {
                return NotFound();
            }

            _context.Magazines.Remove(magazines);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool MagazinesExists(string id)
        {
            return _context.Magazines.Any(e => e.id == id);
        }
    }
}
