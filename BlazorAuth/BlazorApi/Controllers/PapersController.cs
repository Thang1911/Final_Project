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
    public class PapersController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public PapersController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Papers
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Paper>>> GetPapers()
        {
            return await _context.Papers.ToListAsync();
        }

        // GET: api/Papers/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Paper>> GetPaper(string id)
        {
            var paper = await _context.Papers.FindAsync(id);

            if (paper == null)
            {
                return NotFound();
            }

            return paper;
        }

        // PUT: api/Papers/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutPaper(string id, Paper paper)
        {
            if (id != paper.id)
            {
                return BadRequest();
            }

            _context.Entry(paper).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!PaperExists(id))
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

        // POST: api/Papers
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Paper>> PostPaper(Paper paper)
        {
            if (_context.Papers.Any(r => r.paper_name == paper.paper_name))
            {
                return Conflict("A paper with this name already exists.");
            }

            _context.Papers.Add(paper);

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                throw;
            }

            return CreatedAtAction("GetPaper", new { id = paper.id }, paper);
        }

        // DELETE: api/Papers/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeletePaper(string id)
        {
            var paper = await _context.Papers.FindAsync(id);
            if (paper == null)
            {
                return NotFound();
            }

            _context.Papers.Remove(paper);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool PaperExists(string id)
        {
            return _context.Papers.Any(e => e.id == id);
        }
    }
}
