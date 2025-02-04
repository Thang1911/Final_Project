using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorFE.Migrations
{
    /// <inheritdoc />
    public partial class addTopicCouncil : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "ConferenceTopics",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    conference_id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    topic_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Topicid = table.Column<string>(type: "nvarchar(450)", nullable: true),
                    presentation_date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ConferenceTopics", x => x.id);
                    table.ForeignKey(
                        name: "FK_ConferenceTopics_Conferences_conference_id",
                        column: x => x.conference_id,
                        principalTable: "Conferences",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_ConferenceTopics_Topics_Topicid",
                        column: x => x.Topicid,
                        principalTable: "Topics",
                        principalColumn: "id");
                });

            migrationBuilder.CreateTable(
                name: "CouncilTopics",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    council_id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    topic_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Topicid = table.Column<string>(type: "nvarchar(450)", nullable: true),
                    decision = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    reviewed_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CouncilTopics", x => x.id);
                    table.ForeignKey(
                        name: "FK_CouncilTopics_Council_council_id",
                        column: x => x.council_id,
                        principalTable: "Council",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_CouncilTopics_Topics_Topicid",
                        column: x => x.Topicid,
                        principalTable: "Topics",
                        principalColumn: "id");
                });

            migrationBuilder.CreateIndex(
                name: "IX_ConferenceTopics_conference_id",
                table: "ConferenceTopics",
                column: "conference_id");

            migrationBuilder.CreateIndex(
                name: "IX_ConferenceTopics_Topicid",
                table: "ConferenceTopics",
                column: "Topicid");

            migrationBuilder.CreateIndex(
                name: "IX_CouncilTopics_council_id",
                table: "CouncilTopics",
                column: "council_id");

            migrationBuilder.CreateIndex(
                name: "IX_CouncilTopics_Topicid",
                table: "CouncilTopics",
                column: "Topicid");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ConferenceTopics");

            migrationBuilder.DropTable(
                name: "CouncilTopics");
        }
    }
}
