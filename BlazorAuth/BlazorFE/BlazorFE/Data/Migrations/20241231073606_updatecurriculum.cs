using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorFE.Migrations
{
    /// <inheritdoc />
    public partial class updatecurriculum : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Curriculums_Books_bookid",
                table: "Curriculums");

            migrationBuilder.DropForeignKey(
                name: "FK_Curriculums_Trainings_trainingid",
                table: "Curriculums");

            migrationBuilder.DropIndex(
                name: "IX_Curriculums_bookid",
                table: "Curriculums");

            migrationBuilder.DropIndex(
                name: "IX_Curriculums_trainingid",
                table: "Curriculums");

            migrationBuilder.DropColumn(
                name: "bookid",
                table: "Curriculums");

            migrationBuilder.DropColumn(
                name: "trainingid",
                table: "Curriculums");

            migrationBuilder.AlterColumn<string>(
                name: "training_id",
                table: "Curriculums",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "book_id",
                table: "Curriculums",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.CreateIndex(
                name: "IX_Curriculums_book_id",
                table: "Curriculums",
                column: "book_id");

            migrationBuilder.CreateIndex(
                name: "IX_Curriculums_training_id",
                table: "Curriculums",
                column: "training_id");

            migrationBuilder.AddForeignKey(
                name: "FK_Curriculums_Books_book_id",
                table: "Curriculums",
                column: "book_id",
                principalTable: "Books",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Curriculums_Trainings_training_id",
                table: "Curriculums",
                column: "training_id",
                principalTable: "Trainings",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Curriculums_Books_book_id",
                table: "Curriculums");

            migrationBuilder.DropForeignKey(
                name: "FK_Curriculums_Trainings_training_id",
                table: "Curriculums");

            migrationBuilder.DropIndex(
                name: "IX_Curriculums_book_id",
                table: "Curriculums");

            migrationBuilder.DropIndex(
                name: "IX_Curriculums_training_id",
                table: "Curriculums");

            migrationBuilder.AlterColumn<string>(
                name: "training_id",
                table: "Curriculums",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "book_id",
                table: "Curriculums",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

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
        }
    }
}
