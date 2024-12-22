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
    public class ScientistOfferRolesController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public ScientistOfferRolesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/ScientistOfferRoles
        [HttpGet]
        public async Task<ActionResult<IEnumerable<ScientistOfferRole>>> GetScientistOfferRoles()
        {
            return await _context.ScientistOfferRoles.ToListAsync();
        }

        // GET: api/ScientistOfferRoles/5
        [HttpGet("{id}")]
        public async Task<ActionResult<ScientistOfferRole>> GetScientistOfferRole(string id)
        {
            var scientistOfferRole = await _context.ScientistOfferRoles.FindAsync(id);

            if (scientistOfferRole == null)
            {
                return NotFound();
            }

            return scientistOfferRole;
        }

        // PUT: api/ScientistOfferRoles/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutScientistOfferRole(string id, ScientistOfferRole scientistOfferRole)
        {
            if (id != scientistOfferRole.id)
            {
                return BadRequest();
            }

            _context.Entry(scientistOfferRole).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ScientistOfferRoleExists(id))
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

        // POST: api/ScientistOfferRoles
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<ScientistOfferRole>> PostScientistOfferRole(ScientistOfferRole scientistOfferRole)
        {
            _context.ScientistOfferRoles.Add(scientistOfferRole);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (ScientistOfferRoleExists(scientistOfferRole.id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetScientistOfferRole", new { id = scientistOfferRole.id }, scientistOfferRole);
        }

        // DELETE: api/ScientistOfferRoles/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteScientistOfferRole(string id)
        {
            var scientistOfferRole = await _context.ScientistOfferRoles.FindAsync(id);
            if (scientistOfferRole == null)
            {
                return NotFound();
            }

            _context.ScientistOfferRoles.Remove(scientistOfferRole);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool ScientistOfferRoleExists(string id)
        {
            return _context.ScientistOfferRoles.Any(e => e.id == id);
        }
    }
}
