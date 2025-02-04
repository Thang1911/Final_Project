using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorFE.Migrations
{
    /// <inheritdoc />
    public partial class updateFK1 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Council_TpCouncils_tpcouncilid",
                table: "Council");

            migrationBuilder.RenameColumn(
                name: "tpcouncilid",
                table: "Council",
                newName: "tpCouncilid");

            migrationBuilder.RenameIndex(
                name: "IX_Council_tpcouncilid",
                table: "Council",
                newName: "IX_Council_tpCouncilid");

            migrationBuilder.AddForeignKey(
                name: "FK_Council_TpCouncils_tpCouncilid",
                table: "Council",
                column: "tpCouncilid",
                principalTable: "TpCouncils",
                principalColumn: "id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Council_TpCouncils_tpCouncilid",
                table: "Council");

            migrationBuilder.RenameColumn(
                name: "tpCouncilid",
                table: "Council",
                newName: "tpcouncilid");

            migrationBuilder.RenameIndex(
                name: "IX_Council_tpCouncilid",
                table: "Council",
                newName: "IX_Council_tpcouncilid");

            migrationBuilder.AddForeignKey(
                name: "FK_Council_TpCouncils_tpcouncilid",
                table: "Council",
                column: "tpcouncilid",
                principalTable: "TpCouncils",
                principalColumn: "id");
        }
    }
}
