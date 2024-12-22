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
    public class ScientistCurriculumRolesController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public ScientistCurriculumRolesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/ScientistCurriculumRoles
        [HttpGet]
        public async Task<ActionResult<IEnumerable<ScientistCurriculumRole>>> GetScientistCurriculumRoles()
        {
            return await _context.ScientistCurriculumRoles.ToListAsync();
        }

        // GET: api/ScientistCurriculumRoles/5
        [HttpGet("{id}")]
        public async Task<ActionResult<ScientistCurriculumRole>> GetScientistCurriculumRole(string id)
        {
            var scientistCurriculumRole = await _context.ScientistCurriculumRoles.FindAsync(id);

            if (scientistCurriculumRole == null)
            {
                return NotFound();
            }

            return scientistCurriculumRole;
        }

        // PUT: api/ScientistCurriculumRoles/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutScientistCurriculumRole(string id, ScientistCurriculumRole scientistCurriculumRole)
        {
            if (id != scientistCurriculumRole.id)
            {
                return BadRequest();
            }

            _context.Entry(scientistCurriculumRole).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ScientistCurriculumRoleExists(id))
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

        // POST: api/ScientistCurriculumRoles
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<ScientistCurriculumRole>> PostScientistCurriculumRole(ScientistCurriculumRole scientistCurriculumRole)
        {
            _context.ScientistCurriculumRoles.Add(scientistCurriculumRole);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (ScientistCurriculumRoleExists(scientistCurriculumRole.id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetScientistCurriculumRole", new { id = scientistCurriculumRole.id }, scientistCurriculumRole);
        }

        // DELETE: api/ScientistCurriculumRoles/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteScientistCurriculumRole(string id)
        {
            var scientistCurriculumRole = await _context.ScientistCurriculumRoles.FindAsync(id);
            if (scientistCurriculumRole == null)
            {
                return NotFound();
            }

            _context.ScientistCurriculumRoles.Remove(scientistCurriculumRole);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool ScientistCurriculumRoleExists(string id)
        {
            return _context.ScientistCurriculumRoles.Any(e => e.id == id);
        }
    }
}
