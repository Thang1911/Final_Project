using Blazored.Toast;
using BlazorFE.Components;
using BlazorFE.Components.Account;
using BlazorFE.Data;
using BlazorFE.Services;
using BlazorFE.Services.Category;
using Microsoft.AspNetCore.Components.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Syncfusion.Blazor;


var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddRazorComponents()
    .AddInteractiveServerComponents()
    .AddInteractiveWebAssemblyComponents();

builder.Services.AddCascadingAuthenticationState();
builder.Services.AddScoped<IdentityUserAccessor>();
builder.Services.AddScoped<IdentityRedirectManager>();
builder.Services.AddScoped<AuthenticationStateProvider, PersistingRevalidatingAuthenticationStateProvider>();

builder.Services.AddScoped<ScientistServices>();
builder.Services.AddScoped<TopicServices>();
builder.Services.AddScoped<RoleServices>();
builder.Services.AddScoped<LvTopicServices>();
builder.Services.AddScoped<MagazineServices>();
builder.Services.AddScoped<CurriculumServices>();
builder.Services.AddScoped<OfferServices>();
builder.Services.AddScoped<OfficeServices>();
builder.Services.AddScoped<TrainingServices>();
builder.Services.AddScoped<BookServices>();
builder.Services.AddScoped<ProposeServices>();
builder.Services.AddScoped<PaperServices>();
builder.Services.AddScoped<DegreeServices>();
builder.Services.AddScoped<FileUploadServices>();
builder.Services.AddScoped<MagazineScoreServices>();
builder.Services.AddScoped<CouncilServices>();
builder.Services.AddScoped<LvCouncilServices>();
builder.Services.AddScoped<TpCouncilServices>();

builder.Services.AddScoped<PdfServices>();


builder.Services.AddBlazoredToast();
builder.Services.AddSyncfusionBlazor();
builder.Services.AddBlazorBootstrap();

//builder.Services.AddSingleton<GoogleDriveServices>();


builder.Services.AddAuthentication(options =>
    {
        options.DefaultScheme = IdentityConstants.ApplicationScheme;
        options.DefaultSignInScheme = IdentityConstants.ExternalScheme;
    })
     .AddCookie(IdentityConstants.ApplicationScheme, options =>
     {
         options.Cookie.Name = "auth_token";
         options.LoginPath = "/login";
         options.Cookie.MaxAge = TimeSpan.FromMinutes(60);
         options.AccessDeniedPath = "/Account/AccessDenied";
     })
    .AddCookie(IdentityConstants.ExternalScheme, options =>
    {
        options.Cookie.Name = "external_auth_token"; 
        options.Cookie.MaxAge = TimeSpan.FromMinutes(5);
        options.ExpireTimeSpan = TimeSpan.FromMinutes(5);
    })
    .AddGoogle(options =>
    {
        options.ClientId = builder.Configuration["GoogleKey:ClientId"];
        options.ClientSecret = builder.Configuration["GoogleKey:ClientSecret"];
    });

builder.Services.AddAuthorization(options =>
{
    options.AddPolicy("Administrators", policy =>
        policy.RequireRole("Administrators"));
});

var connectionString = builder.Configuration.GetConnectionString("DefaultConnection") ?? throw new InvalidOperationException("Connection string 'DefaultConnection' not found.");
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(connectionString));
builder.Services.AddDatabaseDeveloperPageExceptionFilter();

builder.Services.AddIdentityCore<ApplicationUser>(options => options.SignIn.RequireConfirmedAccount = true)
    .AddRoles<IdentityRole>()
    .AddEntityFrameworkStores<ApplicationDbContext>()
    .AddSignInManager()
    .AddDefaultTokenProviders();

builder.Services.AddSingleton<IEmailSender<ApplicationUser>, IdentityNoOpEmailSender>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseWebAssemblyDebugging();
    app.UseMigrationsEndPoint();
}
else
{
    app.UseExceptionHandler("/Error", createScopeForErrors: true);
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();

app.UseStaticFiles();
app.UseAntiforgery();

app.MapRazorComponents<App>()
    .AddInteractiveServerRenderMode()
    .AddInteractiveWebAssemblyRenderMode()
    .AddAdditionalAssemblies(typeof(BlazorFE.Client._Imports).Assembly);

// Add additional endpoints required by the Identity /Account Razor components.
app.MapAdditionalIdentityEndpoints();

app.Run();
