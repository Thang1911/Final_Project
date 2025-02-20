using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorFE.Migrations
{
    /// <inheritdoc />
    public partial class UpdateMonth : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "month",
                table: "Offers",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "month",
                table: "Magazines",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "month",
                table: "Curriculums",
                type: "int",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "month",
                table: "Offers");

            migrationBuilder.DropColumn(
                name: "month",
                table: "Magazines");

            migrationBuilder.DropColumn(
                name: "month",
                table: "Curriculums");
        }
    }
}
