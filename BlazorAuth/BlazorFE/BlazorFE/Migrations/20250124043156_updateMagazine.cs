using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorFE.Migrations
{
    /// <inheritdoc />
    public partial class updateMagazine : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "ScientistRequestid",
                table: "ScientistMagazineRoles",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "magazine_scope",
                table: "Magazines",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "rank",
                table: "Magazines",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "MagazineScores",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    magazine_score_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_MagazineScores", x => x.id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_ScientistMagazineRoles_ScientistRequestid",
                table: "ScientistMagazineRoles",
                column: "ScientistRequestid");

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistMagazineRoles_Scientists_ScientistRequestid",
                table: "ScientistMagazineRoles",
                column: "ScientistRequestid",
                principalTable: "Scientists",
                principalColumn: "id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ScientistMagazineRoles_Scientists_ScientistRequestid",
                table: "ScientistMagazineRoles");

            migrationBuilder.DropTable(
                name: "MagazineScores");

            migrationBuilder.DropIndex(
                name: "IX_ScientistMagazineRoles_ScientistRequestid",
                table: "ScientistMagazineRoles");

            migrationBuilder.DropColumn(
                name: "ScientistRequestid",
                table: "ScientistMagazineRoles");

            migrationBuilder.DropColumn(
                name: "magazine_scope",
                table: "Magazines");

            migrationBuilder.DropColumn(
                name: "rank",
                table: "Magazines");
        }
    }
}
