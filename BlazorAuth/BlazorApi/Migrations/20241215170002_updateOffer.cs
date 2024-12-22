using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorApi.Migrations
{
    /// <inheritdoc />
    public partial class updateOffer : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Offers_Proposes_Proposeid",
                table: "Offers");

            migrationBuilder.DropIndex(
                name: "IX_Offers_Proposeid",
                table: "Offers");

            migrationBuilder.DropColumn(
                name: "Proposeid",
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

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
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
                name: "Proposeid",
                table: "Offers",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Offers_Proposeid",
                table: "Offers",
                column: "Proposeid");

            migrationBuilder.AddForeignKey(
                name: "FK_Offers_Proposes_Proposeid",
                table: "Offers",
                column: "Proposeid",
                principalTable: "Proposes",
                principalColumn: "id");
        }
    }
}
