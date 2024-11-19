using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;

namespace Test.Api.Entities
{
    public class Role : IdentityRole<Guid>
    {
        [MaxLength(256)]
        [Required]
        public string Description { get; set; }
    }
}
