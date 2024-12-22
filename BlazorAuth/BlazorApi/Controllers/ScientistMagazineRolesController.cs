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
    public class ScientistMagazineRolesController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public ScientistMagazineRolesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/ScientistMagazineRoles
        [HttpGet]
        public async Task<ActionResult<IEnumerable<ScientistMagazineRole>>> GetScientistMagazineRoles()
        {
            return await _context.ScientistMagazineRoles.ToListAsync();
        }

        // GET: api/ScientistMagazineRoles/5
        [HttpGet("{id}")]
        public async Task<ActionResult<ScientistMagazineRole>> GetScientistMagazineRole(string id)
        {
            var scientistMagazineRole = await _context.ScientistMagazineRoles.FindAsync(id);

            if (scientistMagazineRole == null)
            {
                return NotFound();
            }

            return scientistMagazineRole;
        }

        // PUT: api/ScientistMagazineRoles/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutScientistMagazineRole(string id, ScientistMagazineRole scientistMagazineRole)
        {
            if (id != scientistMagazineRole.id)
            {
                return BadRequest();
            }

            _context.Entry(scientistMagazineRole).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ScientistMagazineRoleExists(id))
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

        // POST: api/ScientistMagazineRoles
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<ScientistMagazineRole>> PostScientistMagazineRole(ScientistMagazineRole scientistMagazineRole)
        {
            _context.ScientistMagazineRoles.Add(scientistMagazineRole);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (ScientistMagazineRoleExists(scientistMagazineRole.id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetScientistMagazineRole", new { id = scientistMagazineRole.id }, scientistMagazineRole);
        }

        // DELETE: api/ScientistMagazineRoles/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteScientistMagazineRole(string id)
        {
            var scientistMagazineRole = await _context.ScientistMagazineRoles.FindAsync(id);
            if (scientistMagazineRole == null)
            {
                return NotFound();
            }

            _context.ScientistMagazineRoles.Remove(scientistMagazineRole);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool ScientistMagazineRoleExists(string id)
        {
            return _context.ScientistMagazineRoles.Any(e => e.id == id);
        }
    }
}
