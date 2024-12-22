using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorApi.Migrations
{
    /// <inheritdoc />
    public partial class updateName : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "profile_name",
                table: "Scientists",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "profile_name",
                table: "Scientists");
        }
    }
}
