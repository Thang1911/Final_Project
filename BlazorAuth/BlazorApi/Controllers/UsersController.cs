using BlazorApi.Models;
using BlazorApi.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using System.Diagnostics;

namespace BlazorApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        private readonly ApplicationDbContext context;
        //private readonly RoleManager<IdentityRole> _roleManager;
        public UsersController(ApplicationDbContext context)
        {
            this.context = context;
            //_roleManager = roleManager;
        }

        [HttpGet]
        public List<User> GetUsers() 
        { 
            return context.Users.OrderByDescending(x => x.CreatedDate).ToList();
        }

        [HttpGet("{id}")]
        public IActionResult GetUser(string id)
        {
            var user = context.Users.Find(id);
            if (user == null) {
                return NotFound();
            };

            return Ok(user);
        }

        [HttpPost]
        public IActionResult CreateUser(UserDto userDto)
        {
            var otherUser = context.Users.FirstOrDefault(c => c.Email == userDto.Email);
            if (otherUser != null) {
                ModelState.AddModelError("Email", "The email address is already used");
                var validation = new ValidationProblemDetails(ModelState);
                return BadRequest(validation);
            }

            var user = new User
            {
                FirstName = userDto.FirstName,
                lastName = userDto.LastName,
                Email = userDto.Email,
                PhoneNumber = userDto.PhoneNumber ?? "",
                Address = userDto.Address ?? "",
                Role = userDto.Role ?? "Guest",
                CreatedDate = DateTime.Now,
            };

            context.Users.Add(user);
            context.SaveChanges();

            return Ok(user);
        }

        [HttpPut("{id}")]
        public IActionResult EditUser(string id, UserDto userDto)
        {
            var otherUser = context.Users.FirstOrDefault(c => c.Id != id && c.Email == userDto.Email);
            if (otherUser != null)
            {
                ModelState.AddModelError("Email", "The email address is already used");
                var validation = new ValidationProblemDetails(ModelState);
                return BadRequest(validation);
            }

            var user = context.Users.Find(id);
            if (user == null) {
                Debug.WriteLine("User with ID " + id + " not found.");
                return NotFound();
            }

            user.FirstName = userDto.FirstName;
            user.lastName = userDto.LastName;
            user.Email = userDto.Email;
            user.PhoneNumber = userDto.PhoneNumber;
            user.Address = userDto.Address ?? "";
            user.Role = userDto.Role ?? "Guest";

            context.SaveChanges();

            return Ok();
        }

        [HttpDelete("{id}")]
        public IActionResult DeleteUser(string id) { 
            var user = context.Users.Find(id);
            if (user == null) {

                return NotFound();
            }

            context.Users.Remove(user);
            context.SaveChanges();

            return Ok();
        }
    }
}
