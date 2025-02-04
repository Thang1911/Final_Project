using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorFE.Migrations
{
    /// <inheritdoc />
    public partial class addRelation : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "ConferenceCouncils",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    conference_id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    council_id = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ConferenceCouncils", x => x.id);
                    table.ForeignKey(
                        name: "FK_ConferenceCouncils_Conferences_conference_id",
                        column: x => x.conference_id,
                        principalTable: "Conferences",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_ConferenceCouncils_Council_council_id",
                        column: x => x.council_id,
                        principalTable: "Council",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_ConferenceCouncils_conference_id",
                table: "ConferenceCouncils",
                column: "conference_id");

            migrationBuilder.CreateIndex(
                name: "IX_ConferenceCouncils_council_id",
                table: "ConferenceCouncils",
                column: "council_id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ConferenceCouncils");
        }
    }
}
