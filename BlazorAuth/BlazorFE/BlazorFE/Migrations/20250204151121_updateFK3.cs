using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorFE.Migrations
{
    /// <inheritdoc />
    public partial class updateFK3 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Council_LvCouncils_lvCouncilid",
                table: "Council");

            migrationBuilder.DropForeignKey(
                name: "FK_Council_TpCouncils_tpCouncilid",
                table: "Council");

            migrationBuilder.DropColumn(
                name: "lvCouncil_id",
                table: "Council");

            migrationBuilder.DropColumn(
                name: "tpCouncil_id",
                table: "Council");

            migrationBuilder.RenameColumn(
                name: "tpCouncilid",
                table: "Council",
                newName: "tpCouncilId");

            migrationBuilder.RenameColumn(
                name: "lvCouncilid",
                table: "Council",
                newName: "lvCouncilId");

            migrationBuilder.RenameIndex(
                name: "IX_Council_tpCouncilid",
                table: "Council",
                newName: "IX_Council_tpCouncilId");

            migrationBuilder.RenameIndex(
                name: "IX_Council_lvCouncilid",
                table: "Council",
                newName: "IX_Council_lvCouncilId");

            migrationBuilder.AlterColumn<string>(
                name: "tpCouncilId",
                table: "Council",
                type: "nvarchar(450)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(450)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "lvCouncilId",
                table: "Council",
                type: "nvarchar(450)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(450)",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Council_LvCouncils_lvCouncilId",
                table: "Council",
                column: "lvCouncilId",
                principalTable: "LvCouncils",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Council_TpCouncils_tpCouncilId",
                table: "Council",
                column: "tpCouncilId",
                principalTable: "TpCouncils",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Council_LvCouncils_lvCouncilId",
                table: "Council");

            migrationBuilder.DropForeignKey(
                name: "FK_Council_TpCouncils_tpCouncilId",
                table: "Council");

            migrationBuilder.RenameColumn(
                name: "tpCouncilId",
                table: "Council",
                newName: "tpCouncilid");

            migrationBuilder.RenameColumn(
                name: "lvCouncilId",
                table: "Council",
                newName: "lvCouncilid");

            migrationBuilder.RenameIndex(
                name: "IX_Council_tpCouncilId",
                table: "Council",
                newName: "IX_Council_tpCouncilid");

            migrationBuilder.RenameIndex(
                name: "IX_Council_lvCouncilId",
                table: "Council",
                newName: "IX_Council_lvCouncilid");

            migrationBuilder.AlterColumn<string>(
                name: "tpCouncilid",
                table: "Council",
                type: "nvarchar(450)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "lvCouncilid",
                table: "Council",
                type: "nvarchar(450)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AddColumn<string>(
                name: "lvCouncil_id",
                table: "Council",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "tpCouncil_id",
                table: "Council",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddForeignKey(
                name: "FK_Council_LvCouncils_lvCouncilid",
                table: "Council",
                column: "lvCouncilid",
                principalTable: "LvCouncils",
                principalColumn: "id");

            migrationBuilder.AddForeignKey(
                name: "FK_Council_TpCouncils_tpCouncilid",
                table: "Council",
                column: "tpCouncilid",
                principalTable: "TpCouncils",
                principalColumn: "id");
        }
    }
}
