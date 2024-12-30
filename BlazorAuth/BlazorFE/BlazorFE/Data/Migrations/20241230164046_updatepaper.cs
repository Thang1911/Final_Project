using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorFE.Migrations
{
    /// <inheritdoc />
    public partial class updatepaper : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "paper_id",
                table: "Magazines",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.CreateIndex(
                name: "IX_Magazines_paper_id",
                table: "Magazines",
                column: "paper_id");

            migrationBuilder.AddForeignKey(
                name: "FK_Magazines_Papers_paper_id",
                table: "Magazines",
                column: "paper_id",
                principalTable: "Papers",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Magazines_Papers_paper_id",
                table: "Magazines");

            migrationBuilder.DropIndex(
                name: "IX_Magazines_paper_id",
                table: "Magazines");

            migrationBuilder.AlterColumn<string>(
                name: "paper_id",
                table: "Magazines",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");
        }
    }
}
