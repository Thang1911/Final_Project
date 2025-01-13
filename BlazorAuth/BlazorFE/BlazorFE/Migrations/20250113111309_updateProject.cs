using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorFE.Migrations
{
    /// <inheritdoc />
    public partial class updateProject : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Projects",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    title = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    description = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    reseacher_id = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    researcherid = table.Column<string>(type: "nvarchar(450)", nullable: true),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: true),
                    updated_by = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Projects", x => x.id);
                    table.ForeignKey(
                        name: "FK_Projects_Researchers_researcherid",
                        column: x => x.researcherid,
                        principalTable: "Researchers",
                        principalColumn: "id");
                });

            migrationBuilder.CreateIndex(
                name: "IX_Projects_researcherid",
                table: "Projects",
                column: "researcherid");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Projects");
        }
    }
}
