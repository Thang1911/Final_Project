using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Test.Api.Repositories;
using Test.Model;

namespace Test.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        private readonly IUserRepository _userRepository;
        public UsersController(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }

        [HttpGet]
        public async Task<IActionResult> GetAll()
        {
            var users = await _userRepository.GetUserList();
            var listUsers = users.Select(x => new IdentityUserDto()
            {
                Id = x.Id,
                FullName = x.FirstName + " " + x.LastName,
            });

            return Ok(listUsers);
        }
    }
}
