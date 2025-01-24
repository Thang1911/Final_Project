using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorFE.Migrations
{
    /// <inheritdoc />
    public partial class updateMagazineScoreKey : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "MagazineScoreid",
                table: "Magazines",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "magazine_score_id",
                table: "Magazines",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

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

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
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

            migrationBuilder.DropColumn(
                name: "magazine_score_id",
                table: "Magazines");
        }
    }
}
