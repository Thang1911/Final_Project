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
            migrationBuilder.AlterColumn<string>(
                name: "scientist_id",
                table: "ScientistMagazineRoles",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "role_id",
                table: "ScientistMagazineRoles",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "magazine_id",
                table: "ScientistMagazineRoles",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.CreateIndex(
                name: "IX_ScientistMagazineRoles_magazine_id",
                table: "ScientistMagazineRoles",
                column: "magazine_id");

            migrationBuilder.CreateIndex(
                name: "IX_ScientistMagazineRoles_role_id",
                table: "ScientistMagazineRoles",
                column: "role_id");

            migrationBuilder.CreateIndex(
                name: "IX_ScientistMagazineRoles_scientist_id",
                table: "ScientistMagazineRoles",
                column: "scientist_id");

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistMagazineRoles_Magazines_magazine_id",
                table: "ScientistMagazineRoles",
                column: "magazine_id",
                principalTable: "Magazines",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistMagazineRoles_Roles_role_id",
                table: "ScientistMagazineRoles",
                column: "role_id",
                principalTable: "Roles",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistMagazineRoles_Scientists_scientist_id",
                table: "ScientistMagazineRoles",
                column: "scientist_id",
                principalTable: "Scientists",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ScientistMagazineRoles_Magazines_magazine_id",
                table: "ScientistMagazineRoles");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistMagazineRoles_Roles_role_id",
                table: "ScientistMagazineRoles");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistMagazineRoles_Scientists_scientist_id",
                table: "ScientistMagazineRoles");

            migrationBuilder.DropIndex(
                name: "IX_ScientistMagazineRoles_magazine_id",
                table: "ScientistMagazineRoles");

            migrationBuilder.DropIndex(
                name: "IX_ScientistMagazineRoles_role_id",
                table: "ScientistMagazineRoles");

            migrationBuilder.DropIndex(
                name: "IX_ScientistMagazineRoles_scientist_id",
                table: "ScientistMagazineRoles");

            migrationBuilder.AlterColumn<string>(
                name: "scientist_id",
                table: "ScientistMagazineRoles",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "role_id",
                table: "ScientistMagazineRoles",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "magazine_id",
                table: "ScientistMagazineRoles",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");
        }
    }
}
