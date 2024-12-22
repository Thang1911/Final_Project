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
    public class ArseachesController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public ArseachesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Arseaches
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Arseach>>> GetArseachs()
        {
            return await _context.Arseachs.ToListAsync();
        }

        // GET: api/Arseaches/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Arseach>> GetArseach(string id)
        {
            var arseach = await _context.Arseachs.FindAsync(id);

            if (arseach == null)
            {
                return NotFound();
            }

            return arseach;
        }

        // PUT: api/Arseaches/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutArseach(string id, Arseach arseach)
        {
            if (id != arseach.id)
            {
                return BadRequest();
            }

            _context.Entry(arseach).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ArseachExists(id))
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

        // POST: api/Arseaches
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Arseach>> PostArseach(Arseach arseach)
        {
            _context.Arseachs.Add(arseach);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (ArseachExists(arseach.id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetArseach", new { id = arseach.id }, arseach);
        }

        // DELETE: api/Arseaches/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteArseach(string id)
        {
            var arseach = await _context.Arseachs.FindAsync(id);
            if (arseach == null)
            {
                return NotFound();
            }

            _context.Arseachs.Remove(arseach);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool ArseachExists(string id)
        {
            return _context.Arseachs.Any(e => e.id == id);
        }
    }
}
