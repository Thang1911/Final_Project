using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorFE.Migrations
{
    /// <inheritdoc />
    public partial class InitialTest2 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "googleId",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "role",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "googleId",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "role",
                table: "AspNetUsers");
        }
    }
}
