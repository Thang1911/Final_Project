using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorApi.Migrations
{
    /// <inheritdoc />
    public partial class updateLvTopic : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_LvTopics_Categories_categoryid",
                table: "LvTopics");

            migrationBuilder.DropIndex(
                name: "IX_LvTopics_categoryid",
                table: "LvTopics");

            migrationBuilder.DropColumn(
                name: "categoryid",
                table: "LvTopics");

            migrationBuilder.AddColumn<int>(
                name: "category",
                table: "LvTopics",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "category",
                table: "LvTopics");

            migrationBuilder.AddColumn<string>(
                name: "categoryid",
                table: "LvTopics",
                type: "nvarchar(450)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.CreateIndex(
                name: "IX_LvTopics_categoryid",
                table: "LvTopics",
                column: "categoryid");

            migrationBuilder.AddForeignKey(
                name: "FK_LvTopics_Categories_categoryid",
                table: "LvTopics",
                column: "categoryid",
                principalTable: "Categories",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
