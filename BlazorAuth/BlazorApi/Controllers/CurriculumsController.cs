using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using BlazorApi.Models.Curriculum;
using BlazorApi.Services;

namespace BlazorApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CurriculumsController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public CurriculumsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Curriculums
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Curriculums>>> GetCurriculums()
        {
            return await _context.Curriculums.ToListAsync();
        }

        // GET: api/Curriculums/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Curriculums>> GetCurriculums(string id)
        {
            var curriculums = await _context.Curriculums.FindAsync(id);

            if (curriculums == null)
            {
                return NotFound();
            }

            return curriculums;
        }

        // PUT: api/Curriculums/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutCurriculums(string id, Curriculums curriculums)
        {
            if (id != curriculums.id)
            {
                return BadRequest();
            }

            _context.Entry(curriculums).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CurriculumsExists(id))
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

        // POST: api/Curriculums
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Curriculums>> PostCurriculums(Curriculums curriculums)
        {
            _context.Curriculums.Add(curriculums);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (CurriculumsExists(curriculums.id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetCurriculums", new { id = curriculums.id }, curriculums);
        }

        // DELETE: api/Curriculums/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteCurriculums(string id)
        {
            var curriculums = await _context.Curriculums.FindAsync(id);
            if (curriculums == null)
            {
                return NotFound();
            }

            _context.Curriculums.Remove(curriculums);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool CurriculumsExists(string id)
        {
            return _context.Curriculums.Any(e => e.id == id);
        }
    }
}
