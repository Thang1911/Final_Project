using BlazorApi.Models;
using BlazorAuth.Client.Pages;
using BlazorAuth.Components;
using BlazorAuth.Components.Account;
using BlazorApi.Services;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Components.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Authentication.Google;
using Microsoft.Extensions.Options;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddRazorComponents()
    .AddInteractiveServerComponents()
    .AddInteractiveWebAssemblyComponents();



//builder.Services.AddCascadingAuthenticationState();
//builder.Services.AddScoped<IdentityUserAccessor>();
//builder.Services.AddScoped<IdentityRedirectManager>();
builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri("http://localhost:5160/api") });


builder.Services.AddAuthentication(options => 
    {
    options.DefaultScheme = CookieAuthenticationDefaults.AuthenticationScheme;
    //options.DefaultChallengeScheme = GoogleDefaults.AuthenticationScheme;
    })
    .AddCookie(options =>
    {
        options.Cookie.Name = "auth_token";
        options.LoginPath = "/login";
        options.Cookie.MaxAge = TimeSpan.FromMinutes(60);
        options.AccessDeniedPath = "/Account/AccessDenied";
    })
    .AddGoogle(googleOptions =>
    {
        googleOptions.ClientId = builder.Configuration["GoogleKey:ClientId"];
        googleOptions.ClientSecret = builder.Configuration["GoogleKey:ClientSecret"];
        googleOptions.Scope.Add("email");
        googleOptions.SaveTokens = true;
        googleOptions.CallbackPath = "/signin-google";
    });

builder.Services.AddAuthorization();
builder.Services.AddCascadingAuthenticationState();

var connectionString = builder.Configuration.GetConnectionString("DefaultConnection") ?? throw new InvalidOperationException("Connection string 'DefaultConnection' not found.");
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(connectionString));
builder.Services.AddDatabaseDeveloperPageExceptionFilter();


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

app.UseAuthentication();
app.UseAuthorization();

app.MapRazorComponents<App>()
    .AddInteractiveServerRenderMode()
    .AddInteractiveWebAssemblyRenderMode()
    .AddAdditionalAssemblies(typeof(BlazorAuth.Client._Imports).Assembly);

app.Run();
