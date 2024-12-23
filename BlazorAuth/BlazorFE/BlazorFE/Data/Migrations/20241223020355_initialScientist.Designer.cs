﻿// <auto-generated />
using System;
using BlazorFE.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

#nullable disable

namespace BlazorFE.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20241223020355_initialScientist")]
    partial class initialScientist
    {
        /// <inheritdoc />
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "8.0.11")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("BlazorFE.Data.ApplicationUser", b =>
                {
                    b.Property<string>("Id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<int>("AccessFailedCount")
                        .HasColumnType("int");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Email")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<bool>("EmailConfirmed")
                        .HasColumnType("bit");

                    b.Property<bool>("LockoutEnabled")
                        .HasColumnType("bit");

                    b.Property<DateTimeOffset?>("LockoutEnd")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("NormalizedEmail")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("NormalizedUserName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("PasswordHash")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PhoneNumber")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("PhoneNumberConfirmed")
                        .HasColumnType("bit");

                    b.Property<string>("SecurityStamp")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("TwoFactorEnabled")
                        .HasColumnType("bit");

                    b.Property<string>("UserName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("googleId")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("role")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("NormalizedEmail")
                        .HasDatabaseName("EmailIndex");

                    b.HasIndex("NormalizedUserName")
                        .IsUnique()
                        .HasDatabaseName("UserNameIndex")
                        .HasFilter("[NormalizedUserName] IS NOT NULL");

                    b.ToTable("AspNetUsers", (string)null);
                });

            modelBuilder.Entity("BlazorFE.Models.Category.Arseach", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("arseach_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("arsearch_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("Arseachs");
                });

            modelBuilder.Entity("BlazorFE.Models.Category.Artopic", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("artopic_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("artopic_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("ArTopics");
                });

            modelBuilder.Entity("BlazorFE.Models.Category.Categories", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("category_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<int>("research_number")
                        .HasColumnType("int");

                    b.Property<string>("role_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("training_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("type")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("Categories");
                });

            modelBuilder.Entity("BlazorFE.Models.Category.Councils", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("position_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("Councils");
                });

            modelBuilder.Entity("BlazorFE.Models.Category.LvTopics", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<int>("category")
                        .HasColumnType("int");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("lvtopic_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("LvTopics");
                });

            modelBuilder.Entity("BlazorFE.Models.Category.Money", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("money_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("Moneys");
                });

            modelBuilder.Entity("BlazorFE.Models.Category.Office", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("address")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("email")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("office_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("office_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("office_parent")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("phone")
                        .HasColumnType("int");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("Offices");
                });

            modelBuilder.Entity("BlazorFE.Models.Category.Paper", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("paper_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("Papers");
                });

            modelBuilder.Entity("BlazorFE.Models.Category.Product", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("product_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("Products");
                });

            modelBuilder.Entity("BlazorFE.Models.Category.Propose", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("propose_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("Proposes");
                });

            modelBuilder.Entity("BlazorFE.Models.Category.Role", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("role_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("Roles");
                });

            modelBuilder.Entity("BlazorFE.Models.Category.Score", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("council")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("decision_num")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("mark")
                        .HasColumnType("int");

                    b.Property<string>("tbscore_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.Property<int>("year")
                        .HasColumnType("int");

                    b.HasKey("id");

                    b.ToTable("Scores");
                });

            modelBuilder.Entity("BlazorFE.Models.Category.Seminar", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("seminar_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("Seminars");
                });

            modelBuilder.Entity("BlazorFE.Models.Category.Suggesttion", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("suggestion_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("suggestion_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("Suggesttions");
                });

            modelBuilder.Entity("BlazorFE.Models.Category.TpCouncil", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("tpcouncil_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("tpcouncil_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("TpCouncils");
                });

            modelBuilder.Entity("BlazorFE.Models.Category.Training", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("training_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("Trainings");
                });

            modelBuilder.Entity("BlazorFE.Models.Conferences.Conference", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("conference_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<DateTime>("date")
                        .HasColumnType("datetime2");

                    b.Property<string>("office")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("seminar_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("status_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("unit")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.HasIndex("seminar_id");

                    b.ToTable("Conferences");
                });

            modelBuilder.Entity("BlazorFE.Models.Council.council", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("council_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("date")
                        .HasColumnType("datetime2");

                    b.Property<int>("decision_number")
                        .HasColumnType("int");

                    b.Property<string>("lvcouncil_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("tpcouncil_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("tpcouncilid")
                        .HasColumnType("nvarchar(450)");

                    b.Property<int>("year")
                        .HasColumnType("int");

                    b.HasKey("id");

                    b.HasIndex("tpcouncilid");

                    b.ToTable("Council");
                });

            modelBuilder.Entity("BlazorFE.Models.Curriculum.Curriculums", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("book_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("publisher")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("training_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.Property<int>("year")
                        .HasColumnType("int");

                    b.HasKey("id");

                    b.ToTable("Curriculums");
                });

            modelBuilder.Entity("BlazorFE.Models.File.File", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("file_path")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("file_type")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("original_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("related_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("related_type")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("Files");
                });

            modelBuilder.Entity("BlazorFE.Models.Magazine.Magazines", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("journal")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("magazine_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("paper_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.Property<int>("year")
                        .HasColumnType("int");

                    b.HasKey("id");

                    b.ToTable("Magazines");
                });

            modelBuilder.Entity("BlazorFE.Models.Offer.Offers", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("note")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("offer_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("propose_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("status")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.Property<int>("year")
                        .HasColumnType("int");

                    b.HasKey("id");

                    b.ToTable("Offers");
                });

            modelBuilder.Entity("BlazorFE.Models.Scientist.Scientist", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("address")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("address_office")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("birth_place")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("birthday")
                        .HasColumnType("datetime2");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<int?>("degree_Id")
                        .HasColumnType("int");

                    b.Property<string>("email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("gender")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("house_phone")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("nvestiture")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("office_id")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("office_phone")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("phone")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("profile_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("profile_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("research_major")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("research_position")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("research_title")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("scientific_title")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("user_id")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("id");

                    b.ToTable("Scientists");
                });

            modelBuilder.Entity("BlazorFE.Models.Scientist.ScientistCurriculumRole", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("curriculum_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("role_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("scientist_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("ScientistCurriculumRoles");
                });

            modelBuilder.Entity("BlazorFE.Models.Scientist.ScientistMagazineRole", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("magazine_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("role_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("scientist_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("ScientistMagazineRoles");
                });

            modelBuilder.Entity("BlazorFE.Models.Scientist.ScientistOfferRole", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("offer_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("role_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("scientist_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("ScientistOfferRoles");
                });

            modelBuilder.Entity("BlazorFE.Models.Scientist.scientist_topic_role", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<string>("role_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("scientist_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("topic_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("ScientistTopicRoles");
                });

            modelBuilder.Entity("BlazorFE.Models.Topic.Topics", b =>
                {
                    b.Property<string>("id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<DateTime>("created_at")
                        .HasColumnType("datetime2");

                    b.Property<DateTime>("end_date")
                        .HasColumnType("datetime2");

                    b.Property<string>("lvtopic_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("result")
                        .HasColumnType("int");

                    b.Property<DateTime>("start_date")
                        .HasColumnType("datetime2");

                    b.Property<string>("topic_name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("updated_at")
                        .HasColumnType("datetime2");

                    b.HasKey("id");

                    b.ToTable("Topics");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRole", b =>
                {
                    b.Property<string>("Id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("NormalizedName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.HasKey("Id");

                    b.HasIndex("NormalizedName")
                        .IsUnique()
                        .HasDatabaseName("RoleNameIndex")
                        .HasFilter("[NormalizedName] IS NOT NULL");

                    b.ToTable("AspNetRoles", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<string>("ClaimType")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ClaimValue")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("RoleId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetRoleClaims", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<string>("ClaimType")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ClaimValue")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserClaims", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.Property<string>("LoginProvider")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ProviderKey")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ProviderDisplayName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("LoginProvider", "ProviderKey");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserLogins", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.Property<string>("UserId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("RoleId")
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("UserId", "RoleId");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetUserRoles", (string)null);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.Property<string>("UserId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("LoginProvider")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Value")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("UserId", "LoginProvider", "Name");

                    b.ToTable("AspNetUserTokens", (string)null);
                });

            modelBuilder.Entity("BlazorFE.Models.Conferences.Conference", b =>
                {
                    b.HasOne("BlazorFE.Models.Category.Seminar", "Seminar")
                        .WithMany()
                        .HasForeignKey("seminar_id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Seminar");
                });

            modelBuilder.Entity("BlazorFE.Models.Council.council", b =>
                {
                    b.HasOne("BlazorFE.Models.Category.TpCouncil", "tpcouncil")
                        .WithMany()
                        .HasForeignKey("tpcouncilid");

                    b.Navigation("tpcouncil");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole", null)
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.HasOne("BlazorFE.Data.ApplicationUser", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.HasOne("BlazorFE.Data.ApplicationUser", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole", null)
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("BlazorFE.Data.ApplicationUser", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.HasOne("BlazorFE.Data.ApplicationUser", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
#pragma warning restore 612, 618
        }
    }
}