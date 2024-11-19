using Test.Api.Entities;
using System.Threading.Tasks;
using Test.Model.Enums;
using Microsoft.AspNetCore.Identity;

namespace Test.Api.Data
{
    public class ProjectDbContextSeed
    {
        private readonly IPasswordHasher<IdentityUsers> _passwordHasher = new PasswordHasher<IdentityUsers>();
        public async Task SeedAsync(ProjectDbContext context, ILogger<ProjectDbContextSeed> logger)
        {
            if (!context.Users.Any())
            {
                var user = new IdentityUsers()
                {
                    Id = Guid.NewGuid(),
                    FirstName = "NG",
                    LastName = "UYEN",
                    Email = "admin@gmail.com",
                    PhoneNumber = "0123456789",
                    UserName = "Admin"
                };
                user.PasswordHash = _passwordHasher.HashPassword(user, "Admin@123");
                context.Users.Add(user);
            }

            if (!context.ResearchProjects.Any()) {
                context.ResearchProjects.Add(new Entities.ResearchProject() {
                    Id = Guid.NewGuid(),
                    ProjectName = "Research Project 1",
                    ProjectDescription = "Description of Project 1",
                    ProjectImage = "image1.jpg",
                    Advisor = "Dr. Smith",
                    Students =  "John Doe, Jane Doe" ,
                    Status = Status.Start,
                    CreatedAt = DateTime.UtcNow,
                    UpdatedAt = DateTime.UtcNow
                });
            }

            await context.SaveChangesAsync();
        }
    }
}
