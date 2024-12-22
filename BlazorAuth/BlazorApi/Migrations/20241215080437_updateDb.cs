using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorApi.Migrations
{
    /// <inheritdoc />
    public partial class updateDb : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "role_id",
                table: "Categories",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.CreateIndex(
                name: "IX_Categories_role_id",
                table: "Categories",
                column: "role_id");

            migrationBuilder.AddForeignKey(
                name: "FK_Categories_Roles_role_id",
                table: "Categories",
                column: "role_id",
                principalTable: "Roles",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Categories_Roles_role_id",
                table: "Categories");

            migrationBuilder.DropIndex(
                name: "IX_Categories_role_id",
                table: "Categories");

            migrationBuilder.AlterColumn<string>(
                name: "role_id",
                table: "Categories",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");
        }
    }
}
