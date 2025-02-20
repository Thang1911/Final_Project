using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorFE.Migrations
{
    /// <inheritdoc />
    public partial class UpdateMagazinePaper : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "paper_type",
                table: "Papers",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "scope",
                table: "Papers",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "citation_count",
                table: "Magazines",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "page_count",
                table: "Magazines",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "volume",
                table: "Magazines",
                type: "nvarchar(max)",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "paper_type",
                table: "Papers");

            migrationBuilder.DropColumn(
                name: "scope",
                table: "Papers");

            migrationBuilder.DropColumn(
                name: "citation_count",
                table: "Magazines");

            migrationBuilder.DropColumn(
                name: "page_count",
                table: "Magazines");

            migrationBuilder.DropColumn(
                name: "volume",
                table: "Magazines");
        }
    }
}
