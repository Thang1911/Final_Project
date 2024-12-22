using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace BlazorAuth.Data
{
    public class ApplicationDbContexts : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContexts(DbContextOptions<ApplicationDbContexts> options)
            : base(options)
        {
        }
    }
}
