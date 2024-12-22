using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorApi.Migrations
{
    /// <inheritdoc />
    public partial class updateFkScientist : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "topic_id",
                table: "ScientistTopicRoles",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "scientist_id",
                table: "ScientistTopicRoles",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "role_id",
                table: "ScientistTopicRoles",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

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
                name: "scientist_id",
                table: "ScientistMagazineRoles",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "role_id",
                table: "ScientistMagazineRoles",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "magazine_id",
                table: "ScientistMagazineRoles",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "role_id",
                table: "ScientistCurriculumRoles",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.CreateIndex(
                name: "IX_ScientistTopicRoles_role_id",
                table: "ScientistTopicRoles",
                column: "role_id");

            migrationBuilder.CreateIndex(
                name: "IX_ScientistTopicRoles_scientist_id",
                table: "ScientistTopicRoles",
                column: "scientist_id");

            migrationBuilder.CreateIndex(
                name: "IX_ScientistTopicRoles_topic_id",
                table: "ScientistTopicRoles",
                column: "topic_id");

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
                name: "IX_ScientistMagazineRoles_magazine_id",
                table: "ScientistMagazineRoles",
                column: "magazine_id");

            migrationBuilder.CreateIndex(
                name: "IX_ScientistMagazineRoles_role_id",
                table: "ScientistMagazineRoles",
                column: "role_id");

            migrationBuilder.CreateIndex(
                name: "IX_ScientistMagazineRoles_scientist_id",
                table: "ScientistMagazineRoles",
                column: "scientist_id");

            migrationBuilder.CreateIndex(
                name: "IX_ScientistCurriculumRoles_role_id",
                table: "ScientistCurriculumRoles",
                column: "role_id");

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistCurriculumRoles_Roles_role_id",
                table: "ScientistCurriculumRoles",
                column: "role_id",
                principalTable: "Roles",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistMagazineRoles_Magazines_magazine_id",
                table: "ScientistMagazineRoles",
                column: "magazine_id",
                principalTable: "Magazines",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistMagazineRoles_Roles_role_id",
                table: "ScientistMagazineRoles",
                column: "role_id",
                principalTable: "Roles",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistMagazineRoles_Scientists_scientist_id",
                table: "ScientistMagazineRoles",
                column: "scientist_id",
                principalTable: "Scientists",
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

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistTopicRoles_Roles_role_id",
                table: "ScientistTopicRoles",
                column: "role_id",
                principalTable: "Roles",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistTopicRoles_Scientists_scientist_id",
                table: "ScientistTopicRoles",
                column: "scientist_id",
                principalTable: "Scientists",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistTopicRoles_Topics_topic_id",
                table: "ScientistTopicRoles",
                column: "topic_id",
                principalTable: "Topics",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ScientistCurriculumRoles_Roles_role_id",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistMagazineRoles_Magazines_magazine_id",
                table: "ScientistMagazineRoles");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistMagazineRoles_Roles_role_id",
                table: "ScientistMagazineRoles");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistMagazineRoles_Scientists_scientist_id",
                table: "ScientistMagazineRoles");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistOfferRoles_Offers_offer_id",
                table: "ScientistOfferRoles");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistOfferRoles_Roles_role_id",
                table: "ScientistOfferRoles");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistOfferRoles_Scientists_scientist_id",
                table: "ScientistOfferRoles");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistTopicRoles_Roles_role_id",
                table: "ScientistTopicRoles");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistTopicRoles_Scientists_scientist_id",
                table: "ScientistTopicRoles");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistTopicRoles_Topics_topic_id",
                table: "ScientistTopicRoles");

            migrationBuilder.DropIndex(
                name: "IX_ScientistTopicRoles_role_id",
                table: "ScientistTopicRoles");

            migrationBuilder.DropIndex(
                name: "IX_ScientistTopicRoles_scientist_id",
                table: "ScientistTopicRoles");

            migrationBuilder.DropIndex(
                name: "IX_ScientistTopicRoles_topic_id",
                table: "ScientistTopicRoles");

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
                name: "IX_ScientistMagazineRoles_magazine_id",
                table: "ScientistMagazineRoles");

            migrationBuilder.DropIndex(
                name: "IX_ScientistMagazineRoles_role_id",
                table: "ScientistMagazineRoles");

            migrationBuilder.DropIndex(
                name: "IX_ScientistMagazineRoles_scientist_id",
                table: "ScientistMagazineRoles");

            migrationBuilder.DropIndex(
                name: "IX_ScientistCurriculumRoles_role_id",
                table: "ScientistCurriculumRoles");

            migrationBuilder.AlterColumn<string>(
                name: "topic_id",
                table: "ScientistTopicRoles",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "scientist_id",
                table: "ScientistTopicRoles",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "role_id",
                table: "ScientistTopicRoles",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

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
                name: "scientist_id",
                table: "ScientistMagazineRoles",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "role_id",
                table: "ScientistMagazineRoles",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "magazine_id",
                table: "ScientistMagazineRoles",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "role_id",
                table: "ScientistCurriculumRoles",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");
        }
    }
}
