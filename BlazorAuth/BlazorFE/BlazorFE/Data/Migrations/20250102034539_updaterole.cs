using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorFE.Migrations
{
    /// <inheritdoc />
    public partial class updaterole : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "lvtopic_id",
                table: "Topics",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AddColumn<string>(
                name: "Officeid",
                table: "Scientists",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "role_type",
                table: "Roles",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Topics_lvtopic_id",
                table: "Topics",
                column: "lvtopic_id");

            migrationBuilder.CreateIndex(
                name: "IX_Scientists_Officeid",
                table: "Scientists",
                column: "Officeid");

            migrationBuilder.AddForeignKey(
                name: "FK_Scientists_Offices_Officeid",
                table: "Scientists",
                column: "Officeid",
                principalTable: "Offices",
                principalColumn: "id");

            migrationBuilder.AddForeignKey(
                name: "FK_Topics_LvTopics_lvtopic_id",
                table: "Topics",
                column: "lvtopic_id",
                principalTable: "LvTopics",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Scientists_Offices_Officeid",
                table: "Scientists");

            migrationBuilder.DropForeignKey(
                name: "FK_Topics_LvTopics_lvtopic_id",
                table: "Topics");

            migrationBuilder.DropIndex(
                name: "IX_Topics_lvtopic_id",
                table: "Topics");

            migrationBuilder.DropIndex(
                name: "IX_Scientists_Officeid",
                table: "Scientists");

            migrationBuilder.DropColumn(
                name: "Officeid",
                table: "Scientists");

            migrationBuilder.DropColumn(
                name: "role_type",
                table: "Roles");

            migrationBuilder.AlterColumn<string>(
                name: "lvtopic_id",
                table: "Topics",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");
        }
    }
}
