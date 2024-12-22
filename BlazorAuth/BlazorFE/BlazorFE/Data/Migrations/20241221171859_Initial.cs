using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorFE.Migrations
{
    /// <inheritdoc />
    public partial class Initial : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Arseachs",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    arsearch_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    arseach_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Arseachs", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "ArTopics",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    artopic_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    artopic_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ArTopics", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Categories",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    role_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    category_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    type = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    training_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    research_number = table.Column<int>(type: "int", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Categories", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Councils",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    position_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Councils", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Curriculums",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    year = table.Column<int>(type: "int", nullable: false),
                    publisher = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    book_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    training_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Curriculums", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Files",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    original_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    file_path = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    file_type = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    related_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    related_type = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Files", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "LvTopics",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    lvtopic_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    category = table.Column<int>(type: "int", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_LvTopics", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Magazines",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    magazine_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    year = table.Column<int>(type: "int", nullable: false),
                    journal = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    paper_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Magazines", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Moneys",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    money_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Moneys", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Offers",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    year = table.Column<int>(type: "int", nullable: false),
                    offer_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    propose_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    note = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    status = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Offers", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Offices",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    office_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    office_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    address = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    phone = table.Column<int>(type: "int", nullable: false),
                    email = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    office_parent = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Offices", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Papers",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    paper_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Papers", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Products",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    product_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Products", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Proposes",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    propose_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Proposes", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Roles",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    role_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Roles", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "ScientistCurriculumRoles",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    scientist_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    curriculum_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    role_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ScientistCurriculumRoles", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "ScientistMagazineRoles",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    scientist_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    magazine_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    role_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ScientistMagazineRoles", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "ScientistOfferRoles",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    scientist_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    offer_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    role_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ScientistOfferRoles", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Scientists",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    user_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    profile_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    profile_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    birthday = table.Column<DateTime>(type: "datetime2", nullable: false),
                    gender = table.Column<int>(type: "int", nullable: false),
                    birth_place = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    address = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    office_phone = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    house_phone = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    phone = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    email = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    degree_Id = table.Column<int>(type: "int", nullable: false),
                    nvestiture = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    scientific_title = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    research_major = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    research_title = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    research_position = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    office_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    address_office = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Scientists", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "ScientistTopicRoles",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    scientist_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    topic_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    role_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ScientistTopicRoles", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Scores",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    year = table.Column<int>(type: "int", nullable: false),
                    decision_num = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    tbscore_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    mark = table.Column<int>(type: "int", nullable: false),
                    council = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Scores", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Seminars",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    seminar_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Seminars", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Suggesttions",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    suggestion_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    suggestion_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Suggesttions", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Topics",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    topic_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    result = table.Column<int>(type: "int", nullable: false),
                    lvtopic_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    start_date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    end_date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Topics", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "TpCouncils",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    tpcouncil_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    tpcouncil_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TpCouncils", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Trainings",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    training_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Trainings", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Conferences",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    conference_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    seminar_id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    office = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    unit = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    status_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Conferences", x => x.id);
                    table.ForeignKey(
                        name: "FK_Conferences_Seminars_seminar_id",
                        column: x => x.seminar_id,
                        principalTable: "Seminars",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Council",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    decision_number = table.Column<int>(type: "int", nullable: false),
                    date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    lvcouncil_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    tpcouncil_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    tpcouncilid = table.Column<string>(type: "nvarchar(450)", nullable: true),
                    council_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    year = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Council", x => x.id);
                    table.ForeignKey(
                        name: "FK_Council_TpCouncils_tpcouncilid",
                        column: x => x.tpcouncilid,
                        principalTable: "TpCouncils",
                        principalColumn: "id");
                });

            migrationBuilder.CreateIndex(
                name: "IX_Conferences_seminar_id",
                table: "Conferences",
                column: "seminar_id");

            migrationBuilder.CreateIndex(
                name: "IX_Council_tpcouncilid",
                table: "Council",
                column: "tpcouncilid");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Arseachs");

            migrationBuilder.DropTable(
                name: "ArTopics");

            migrationBuilder.DropTable(
                name: "Categories");

            migrationBuilder.DropTable(
                name: "Conferences");

            migrationBuilder.DropTable(
                name: "Council");

            migrationBuilder.DropTable(
                name: "Councils");

            migrationBuilder.DropTable(
                name: "Curriculums");

            migrationBuilder.DropTable(
                name: "Files");

            migrationBuilder.DropTable(
                name: "LvTopics");

            migrationBuilder.DropTable(
                name: "Magazines");

            migrationBuilder.DropTable(
                name: "Moneys");

            migrationBuilder.DropTable(
                name: "Offers");

            migrationBuilder.DropTable(
                name: "Offices");

            migrationBuilder.DropTable(
                name: "Papers");

            migrationBuilder.DropTable(
                name: "Products");

            migrationBuilder.DropTable(
                name: "Proposes");

            migrationBuilder.DropTable(
                name: "Roles");

            migrationBuilder.DropTable(
                name: "ScientistCurriculumRoles");

            migrationBuilder.DropTable(
                name: "ScientistMagazineRoles");

            migrationBuilder.DropTable(
                name: "ScientistOfferRoles");

            migrationBuilder.DropTable(
                name: "Scientists");

            migrationBuilder.DropTable(
                name: "ScientistTopicRoles");

            migrationBuilder.DropTable(
                name: "Scores");

            migrationBuilder.DropTable(
                name: "Suggesttions");

            migrationBuilder.DropTable(
                name: "Topics");

            migrationBuilder.DropTable(
                name: "Trainings");

            migrationBuilder.DropTable(
                name: "Seminars");

            migrationBuilder.DropTable(
                name: "TpCouncils");
        }
    }
}
