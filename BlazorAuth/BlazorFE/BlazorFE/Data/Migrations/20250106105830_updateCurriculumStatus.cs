using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorFE.Migrations
{
    /// <inheritdoc />
    public partial class updateCurriculumStatus : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "requestStatus",
                table: "ScientistCurriculumRoles",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "status",
                table: "ScientistCurriculumRoles",
                type: "bit",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "requestStatus",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropColumn(
                name: "status",
                table: "ScientistCurriculumRoles");
        }
    }
}
