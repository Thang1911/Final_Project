using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using BlazorApi.Models.Offer;
using BlazorApi.Services;
using System.Text.Json;

namespace BlazorApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OffersController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public OffersController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Offers
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Offers>>> GetOffers()
        {
            return await _context.Offers.ToListAsync();
        }

        // GET: api/Offers/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Offers>> GetOffers(string id)
        {
            var offers = await _context.Offers.FindAsync(id);

            if (offers == null)
            {
                return NotFound();
            }

            return offers;
        }

        // PUT: api/Offers/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutOffers(string id, Offers offers)
        {
            if (id != offers.id)
            {
                return BadRequest();
            }

            // Check if Propose exists using the Propose id
            var propose = await _context.Proposes.FindAsync(offers.propose_id);

            if (propose == null)
            {
                return BadRequest("Propose not found.");
            }

            // Mark the entity as modified
            _context.Entry(offers).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!OffersExists(id))
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


        // POST: api/Offers
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Offers>> PostOffers(Offers offer)
        {
            _context.Offers.Add(offer);

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (OffersExists(offer.id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }
            return CreatedAtAction("GetOffers", new { id = offer.id }, offer);
        }

        // DELETE: api/Offers/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteOffers(string id)
        {
            var offers = await _context.Offers.FindAsync(id);
            if (offers == null)
            {
                return NotFound();
            }

            _context.Offers.Remove(offers);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool OffersExists(string id)
        {
            return _context.Offers.Any(e => e.id == id);
        }
    }
}
