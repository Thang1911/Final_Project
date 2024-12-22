using Microsoft.AspNetCore.Identity;

namespace BlazorFE.Data
{
    // Add profile data for application users by adding properties to the ApplicationUser class
    public class ApplicationUser : IdentityUser
    {
        public string? role { get; set; }
        public string? googleId { get; set; }
    }

}
