using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorApi.Migrations
{
    /// <inheritdoc />
    public partial class updateOffers : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Offers_Proposes_propose_id",
                table: "Offers");

            migrationBuilder.DropIndex(
                name: "IX_Offers_propose_id",
                table: "Offers");

            migrationBuilder.AlterColumn<string>(
                name: "propose_id",
                table: "Offers",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AddColumn<string>(
                name: "proposeid",
                table: "Offers",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Offers_proposeid",
                table: "Offers",
                column: "proposeid");

            migrationBuilder.AddForeignKey(
                name: "FK_Offers_Proposes_proposeid",
                table: "Offers",
                column: "proposeid",
                principalTable: "Proposes",
                principalColumn: "id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Offers_Proposes_proposeid",
                table: "Offers");

            migrationBuilder.DropIndex(
                name: "IX_Offers_proposeid",
                table: "Offers");

            migrationBuilder.DropColumn(
                name: "proposeid",
                table: "Offers");

            migrationBuilder.AlterColumn<string>(
                name: "propose_id",
                table: "Offers",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.CreateIndex(
                name: "IX_Offers_propose_id",
                table: "Offers",
                column: "propose_id");

            migrationBuilder.AddForeignKey(
                name: "FK_Offers_Proposes_propose_id",
                table: "Offers",
                column: "propose_id",
                principalTable: "Proposes",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
