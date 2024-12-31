using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorFE.Migrations
{
    /// <inheritdoc />
    public partial class updatebook : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "role_id",
                table: "ScientistCurriculumRoles",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AddColumn<string>(
                name: "curriculumsid",
                table: "ScientistCurriculumRoles",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "scientistid",
                table: "ScientistCurriculumRoles",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "bookid",
                table: "Curriculums",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "trainingid",
                table: "Curriculums",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "Books",
                columns: table => new
                {
                    id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    book_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    created_at = table.Column<DateTime>(type: "datetime2", nullable: false),
                    updated_at = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Books", x => x.id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_ScientistCurriculumRoles_curriculumsid",
                table: "ScientistCurriculumRoles",
                column: "curriculumsid");

            migrationBuilder.CreateIndex(
                name: "IX_ScientistCurriculumRoles_role_id",
                table: "ScientistCurriculumRoles",
                column: "role_id");

            migrationBuilder.CreateIndex(
                name: "IX_ScientistCurriculumRoles_scientistid",
                table: "ScientistCurriculumRoles",
                column: "scientistid");

            migrationBuilder.CreateIndex(
                name: "IX_Curriculums_bookid",
                table: "Curriculums",
                column: "bookid");

            migrationBuilder.CreateIndex(
                name: "IX_Curriculums_trainingid",
                table: "Curriculums",
                column: "trainingid");

            migrationBuilder.AddForeignKey(
                name: "FK_Curriculums_Books_bookid",
                table: "Curriculums",
                column: "bookid",
                principalTable: "Books",
                principalColumn: "id");

            migrationBuilder.AddForeignKey(
                name: "FK_Curriculums_Trainings_trainingid",
                table: "Curriculums",
                column: "trainingid",
                principalTable: "Trainings",
                principalColumn: "id");

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistCurriculumRoles_Curriculums_curriculumsid",
                table: "ScientistCurriculumRoles",
                column: "curriculumsid",
                principalTable: "Curriculums",
                principalColumn: "id");

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistCurriculumRoles_Roles_role_id",
                table: "ScientistCurriculumRoles",
                column: "role_id",
                principalTable: "Roles",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistCurriculumRoles_Scientists_scientistid",
                table: "ScientistCurriculumRoles",
                column: "scientistid",
                principalTable: "Scientists",
                principalColumn: "id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Curriculums_Books_bookid",
                table: "Curriculums");

            migrationBuilder.DropForeignKey(
                name: "FK_Curriculums_Trainings_trainingid",
                table: "Curriculums");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistCurriculumRoles_Curriculums_curriculumsid",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistCurriculumRoles_Roles_role_id",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistCurriculumRoles_Scientists_scientistid",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropTable(
                name: "Books");

            migrationBuilder.DropIndex(
                name: "IX_ScientistCurriculumRoles_curriculumsid",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropIndex(
                name: "IX_ScientistCurriculumRoles_role_id",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropIndex(
                name: "IX_ScientistCurriculumRoles_scientistid",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropIndex(
                name: "IX_Curriculums_bookid",
                table: "Curriculums");

            migrationBuilder.DropIndex(
                name: "IX_Curriculums_trainingid",
                table: "Curriculums");

            migrationBuilder.DropColumn(
                name: "curriculumsid",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropColumn(
                name: "scientistid",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropColumn(
                name: "bookid",
                table: "Curriculums");

            migrationBuilder.DropColumn(
                name: "trainingid",
                table: "Curriculums");

            migrationBuilder.AlterColumn<string>(
                name: "role_id",
                table: "ScientistCurriculumRoles",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");
        }
    }
}
