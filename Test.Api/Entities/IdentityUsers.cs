using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;

namespace Test.Api.Entities
{
    public class IdentityUsers : IdentityUser<Guid>
    {
        [MaxLength(256)]
        [Required]
        public string FirstName { get; set; }

        [MaxLength(256)]
        [Required]
        public string LastName { get; set; }

    }
}
