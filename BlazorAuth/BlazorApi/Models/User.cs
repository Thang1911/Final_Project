using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

namespace BlazorApi.Models
{
    [Index("Email", IsUnique = true)]
    public class User : IdentityUser
    {
        public string FirstName { get; set; } = "";
        public string lastName { get; set; } = "";
        public string Address { get; set; } = "";
        public string? Role { get; set; }
        public string Status { get; set; } = "";
        public DateTime CreatedDate { get; set; }
    }
}
