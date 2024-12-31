using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorFE.Migrations
{
    /// <inheritdoc />
    public partial class updateoffer : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "scientist_id",
                table: "ScientistOfferRoles",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "role_id",
                table: "ScientistOfferRoles",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "offer_id",
                table: "ScientistOfferRoles",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "propose_id",
                table: "Offers",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.CreateIndex(
                name: "IX_ScientistOfferRoles_offer_id",
                table: "ScientistOfferRoles",
                column: "offer_id");

            migrationBuilder.CreateIndex(
                name: "IX_ScientistOfferRoles_role_id",
                table: "ScientistOfferRoles",
                column: "role_id");

            migrationBuilder.CreateIndex(
                name: "IX_ScientistOfferRoles_scientist_id",
                table: "ScientistOfferRoles",
                column: "scientist_id");

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

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistOfferRoles_Offers_offer_id",
                table: "ScientistOfferRoles",
                column: "offer_id",
                principalTable: "Offers",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistOfferRoles_Roles_role_id",
                table: "ScientistOfferRoles",
                column: "role_id",
                principalTable: "Roles",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistOfferRoles_Scientists_scientist_id",
                table: "ScientistOfferRoles",
                column: "scientist_id",
                principalTable: "Scientists",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Offers_Proposes_propose_id",
                table: "Offers");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistOfferRoles_Offers_offer_id",
                table: "ScientistOfferRoles");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistOfferRoles_Roles_role_id",
                table: "ScientistOfferRoles");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistOfferRoles_Scientists_scientist_id",
                table: "ScientistOfferRoles");

            migrationBuilder.DropIndex(
                name: "IX_ScientistOfferRoles_offer_id",
                table: "ScientistOfferRoles");

            migrationBuilder.DropIndex(
                name: "IX_ScientistOfferRoles_role_id",
                table: "ScientistOfferRoles");

            migrationBuilder.DropIndex(
                name: "IX_ScientistOfferRoles_scientist_id",
                table: "ScientistOfferRoles");

            migrationBuilder.DropIndex(
                name: "IX_Offers_propose_id",
                table: "Offers");

            migrationBuilder.AlterColumn<string>(
                name: "scientist_id",
                table: "ScientistOfferRoles",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "role_id",
                table: "ScientistOfferRoles",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "offer_id",
                table: "ScientistOfferRoles",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "propose_id",
                table: "Offers",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");
        }
    }
}
