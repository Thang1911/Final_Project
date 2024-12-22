using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorApi.Migrations
{
    /// <inheritdoc />
    public partial class updateTopic : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Topics_LvTopics_lvtopic_id",
                table: "Topics");

            migrationBuilder.DropIndex(
                name: "IX_Topics_lvtopic_id",
                table: "Topics");

            migrationBuilder.AlterColumn<string>(
                name: "lvtopic_id",
                table: "Topics",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "lvtopic_id",
                table: "Topics",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.CreateIndex(
                name: "IX_Topics_lvtopic_id",
                table: "Topics",
                column: "lvtopic_id");

            migrationBuilder.AddForeignKey(
                name: "FK_Topics_LvTopics_lvtopic_id",
                table: "Topics",
                column: "lvtopic_id",
                principalTable: "LvTopics",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
