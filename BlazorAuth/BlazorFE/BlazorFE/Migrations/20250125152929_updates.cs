using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorFE.Migrations
{
    /// <inheritdoc />
    public partial class updates : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Magazines_MagazineScores_MagazineScoreid",
                table: "Magazines");

            migrationBuilder.DropIndex(
                name: "IX_Magazines_MagazineScoreid",
                table: "Magazines");

            migrationBuilder.DropColumn(
                name: "MagazineScoreid",
                table: "Magazines");

            migrationBuilder.AlterColumn<string>(
                name: "magazine_score_id",
                table: "Magazines",
                type: "nvarchar(450)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Magazines_magazine_score_id",
                table: "Magazines",
                column: "magazine_score_id");

            migrationBuilder.AddForeignKey(
                name: "FK_Magazines_MagazineScores_magazine_score_id",
                table: "Magazines",
                column: "magazine_score_id",
                principalTable: "MagazineScores",
                principalColumn: "id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Magazines_MagazineScores_magazine_score_id",
                table: "Magazines");

            migrationBuilder.DropIndex(
                name: "IX_Magazines_magazine_score_id",
                table: "Magazines");

            migrationBuilder.AlterColumn<string>(
                name: "magazine_score_id",
                table: "Magazines",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)",
                oldNullable: true);

            migrationBuilder.AddColumn<string>(
                name: "MagazineScoreid",
                table: "Magazines",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Magazines_MagazineScoreid",
                table: "Magazines",
                column: "MagazineScoreid");

            migrationBuilder.AddForeignKey(
                name: "FK_Magazines_MagazineScores_MagazineScoreid",
                table: "Magazines",
                column: "MagazineScoreid",
                principalTable: "MagazineScores",
                principalColumn: "id");
        }
    }
}
