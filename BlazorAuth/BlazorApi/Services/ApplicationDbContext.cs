using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using BlazorApi.Models.Category;
using BlazorApi.Models.Conferences;
using BlazorApi.Models.Council;
using BlazorApi.Models.Curriculum;
using BlazorApi.Models.Magazine;
using BlazorApi.Models.Offer;
using BlazorApi.Models.Scientist;
using BlazorApi.Models.Topic;
using BlazorApi.Models.User;

namespace BlazorApi.Services
{
    public class ApplicationDbContext : IdentityDbContext<IdentityUser>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options) { }

        public DbSet<Arseach> Arseachs { get; set; }
        public DbSet<Artopic> ArTopics { get; set; }
        public DbSet<Training> Trainings { get; set; }
        public DbSet<Councils> Councils { get; set; }
        public DbSet<LvTopics> LvTopics { get; set; }
        public DbSet<Money> Moneys { get; set; }
        public DbSet<Office> Offices { get; set; }
        public DbSet<Paper> Papers { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<Propose> Proposes { get; set; }
        public DbSet<Role> Roles { get; set; }
        public DbSet<Score> Scores { get; set; }
        public DbSet<Seminar> Seminars { get; set; }
        public DbSet<Suggesttion> Suggesttions { get; set; }
        public DbSet<TpCouncil> TpCouncils { get; set; }
        public DbSet<Categories> Categories { get; set; }
        public DbSet<Conference> Conferences { get; set; }
        public DbSet<council> Council { get; set; }
        public DbSet<Curriculums> Curriculums { get; set; }
        public DbSet<Models.File.File> Files { get; set; }
        public DbSet<Magazines> Magazines { get; set; }
        public DbSet<Offers> Offers { get; set; }
        public DbSet<Scientist> Scientists { get; set; }
        public DbSet<ScientistCurriculumRole> ScientistCurriculumRoles { get; set; }
        public DbSet<ScientistMagazineRole> ScientistMagazineRoles { get; set; }
        public DbSet<ScientistOfferRole> ScientistOfferRoles { get; set; }
        public DbSet<scientist_topic_role> ScientistTopicRoles { get; set; }
        public DbSet<Topics> Topics { get; set; }
    }
}
