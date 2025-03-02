using BlazorFE.Models.Category;
using BlazorFE.Models.ConferenceCouncil;
using BlazorFE.Models.Conferences;
using BlazorFE.Models.Council;
using BlazorFE.Models.Curriculum;
using BlazorFE.Models.Magazine;
using BlazorFE.Models.Offer;
using BlazorFE.Models.Scientist;
using BlazorFE.Models.Topic;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Data
{
    public class ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : IdentityDbContext<ApplicationUser>(options)
    {
        public DbSet<IdentityRole> AspNetRoles { get; set; }
        public DbSet<Arseach> Arseachs { get; set; }
        public DbSet<Artopic> ArTopics { get; set; }
        public DbSet<Training> Trainings { get; set; }
        public DbSet<Councils> Councils { get; set; }
        public DbSet<LvTopics> LvTopics { get; set; }
        public DbSet<Money> Moneys { get; set; }
        public DbSet<Office> Offices { get; set; }
        public DbSet<Paper> Papers { get; set; }
        public DbSet<Book> Books { get; set; }
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
        public DbSet<Degree> Degrees { get; set; }
        public DbSet<LvCouncil> LvCouncils { get; set; }
        public DbSet<Researcher> Researchers { get; set; }
        public DbSet<Project> Projects { get; set; }
        public DbSet<MagazineScore> MagazineScores { get; set; }
        public DbSet<CouncilTopics> CouncilTopics { get; set; }
        public DbSet<ConferenceTopics> ConferenceTopics { get; set; }
        public DbSet<ConferenceCouncils> ConferenceCouncils { get; set; }
    }
}
