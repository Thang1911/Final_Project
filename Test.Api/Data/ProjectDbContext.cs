using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;
using Test.Api.Entities;


namespace Test.Api.Data
{
    //public class ProjectDbContext : IdentityDbContext<Entities.IdentityUsers, Entities.Role, Guid>
    //{
    //    public ProjectDbContext(DbContextOptions<ProjectDbContext> options) : base(options) { }


    //}

    public class ProjectDbContext : IdentityDbContext<Entities.IdentityUsers, Entities.Role, Guid>
    {
        public ProjectDbContext(DbContextOptions<ProjectDbContext> options) : base(options) { }

        public DbSet<Entities.ResearchProject> ResearchProjects { get; set; }
    }
}