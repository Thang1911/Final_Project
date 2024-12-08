using BlazorApi.Models;
using BlazorApi.Models.Project;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

namespace BlazorApi.Services
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions options): base(options) { }

        public DbSet<User> Users { get; set; }
        public DbSet<Models.Roles> Roles { get; set; }
        public DbSet<Project> Projects { get; set; }
        public DbSet<ProjectProposal> Proposals { get; set; }
        public DbSet<ProjectMember> Members { get; set; }
    }
}
