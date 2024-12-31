using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorFE.Migrations
{
    /// <inheritdoc />
    public partial class updatebookfk : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ScientistCurriculumRoles_Curriculums_curriculumsid",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistCurriculumRoles_Scientists_scientistid",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropIndex(
                name: "IX_ScientistCurriculumRoles_curriculumsid",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropIndex(
                name: "IX_ScientistCurriculumRoles_scientistid",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropColumn(
                name: "curriculumsid",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropColumn(
                name: "scientistid",
                table: "ScientistCurriculumRoles");

            migrationBuilder.AlterColumn<string>(
                name: "scientist_id",
                table: "ScientistCurriculumRoles",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "curriculum_id",
                table: "ScientistCurriculumRoles",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.CreateIndex(
                name: "IX_ScientistCurriculumRoles_curriculum_id",
                table: "ScientistCurriculumRoles",
                column: "curriculum_id");

            migrationBuilder.CreateIndex(
                name: "IX_ScientistCurriculumRoles_scientist_id",
                table: "ScientistCurriculumRoles",
                column: "scientist_id");

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistCurriculumRoles_Curriculums_curriculum_id",
                table: "ScientistCurriculumRoles",
                column: "curriculum_id",
                principalTable: "Curriculums",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistCurriculumRoles_Scientists_scientist_id",
                table: "ScientistCurriculumRoles",
                column: "scientist_id",
                principalTable: "Scientists",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ScientistCurriculumRoles_Curriculums_curriculum_id",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistCurriculumRoles_Scientists_scientist_id",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropIndex(
                name: "IX_ScientistCurriculumRoles_curriculum_id",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropIndex(
                name: "IX_ScientistCurriculumRoles_scientist_id",
                table: "ScientistCurriculumRoles");

            migrationBuilder.AlterColumn<string>(
                name: "scientist_id",
                table: "ScientistCurriculumRoles",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "curriculum_id",
                table: "ScientistCurriculumRoles",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

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

            migrationBuilder.CreateIndex(
                name: "IX_ScientistCurriculumRoles_curriculumsid",
                table: "ScientistCurriculumRoles",
                column: "curriculumsid");

            migrationBuilder.CreateIndex(
                name: "IX_ScientistCurriculumRoles_scientistid",
                table: "ScientistCurriculumRoles",
                column: "scientistid");

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistCurriculumRoles_Curriculums_curriculumsid",
                table: "ScientistCurriculumRoles",
                column: "curriculumsid",
                principalTable: "Curriculums",
                principalColumn: "id");

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistCurriculumRoles_Scientists_scientistid",
                table: "ScientistCurriculumRoles",
                column: "scientistid",
                principalTable: "Scientists",
                principalColumn: "id");
        }
    }
}
