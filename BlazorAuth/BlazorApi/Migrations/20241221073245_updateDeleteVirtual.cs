using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorApi.Migrations
{
    /// <inheritdoc />
    public partial class updateDeleteVirtual : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Categories_Roles_role_id",
                table: "Categories");

            migrationBuilder.DropForeignKey(
                name: "FK_Categories_Trainings_training_id",
                table: "Categories");

            migrationBuilder.DropForeignKey(
                name: "FK_Curriculums_Trainings_trainingid",
                table: "Curriculums");

            migrationBuilder.DropForeignKey(
                name: "FK_Magazines_Papers_paper_id",
                table: "Magazines");

            migrationBuilder.DropForeignKey(
                name: "FK_Offers_Proposes_proposeid",
                table: "Offers");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistCurriculumRoles_Curriculums_curriculum_id",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistCurriculumRoles_Roles_role_id",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropForeignKey(
                name: "FK_ScientistCurriculumRoles_Scientists_scientist_id",
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
                name: "FK_Scientists_Users_user_id",
                table: "Scientists");

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
                name: "IX_Scientists_user_id",
                table: "Scientists");

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
                name: "IX_ScientistCurriculumRoles_curriculum_id",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropIndex(
                name: "IX_ScientistCurriculumRoles_role_id",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropIndex(
                name: "IX_ScientistCurriculumRoles_scientist_id",
                table: "ScientistCurriculumRoles");

            migrationBuilder.DropIndex(
                name: "IX_Offers_proposeid",
                table: "Offers");

            migrationBuilder.DropIndex(
                name: "IX_Magazines_paper_id",
                table: "Magazines");

            migrationBuilder.DropIndex(
                name: "IX_Curriculums_trainingid",
                table: "Curriculums");

            migrationBuilder.DropIndex(
                name: "IX_Categories_role_id",
                table: "Categories");

            migrationBuilder.DropIndex(
                name: "IX_Categories_training_id",
                table: "Categories");

            migrationBuilder.DropColumn(
                name: "proposeid",
                table: "Offers");

            migrationBuilder.DropColumn(
                name: "trainingid",
                table: "Curriculums");

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
                name: "user_id",
                table: "Scientists",
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
                name: "scientist_id",
                table: "ScientistCurriculumRoles",
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

            migrationBuilder.AlterColumn<string>(
                name: "curriculum_id",
                table: "ScientistCurriculumRoles",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "paper_id",
                table: "Magazines",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "training_id",
                table: "Categories",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "role_id",
                table: "Categories",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
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
                name: "user_id",
                table: "Scientists",
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
                name: "scientist_id",
                table: "ScientistCurriculumRoles",
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

            migrationBuilder.AlterColumn<string>(
                name: "curriculum_id",
                table: "ScientistCurriculumRoles",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AddColumn<string>(
                name: "proposeid",
                table: "Offers",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "paper_id",
                table: "Magazines",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AddColumn<string>(
                name: "trainingid",
                table: "Curriculums",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "training_id",
                table: "Categories",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "role_id",
                table: "Categories",
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
                name: "IX_Scientists_user_id",
                table: "Scientists",
                column: "user_id");

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
                name: "IX_ScientistCurriculumRoles_curriculum_id",
                table: "ScientistCurriculumRoles",
                column: "curriculum_id");

            migrationBuilder.CreateIndex(
                name: "IX_ScientistCurriculumRoles_role_id",
                table: "ScientistCurriculumRoles",
                column: "role_id");

            migrationBuilder.CreateIndex(
                name: "IX_ScientistCurriculumRoles_scientist_id",
                table: "ScientistCurriculumRoles",
                column: "scientist_id");

            migrationBuilder.CreateIndex(
                name: "IX_Offers_proposeid",
                table: "Offers",
                column: "proposeid");

            migrationBuilder.CreateIndex(
                name: "IX_Magazines_paper_id",
                table: "Magazines",
                column: "paper_id");

            migrationBuilder.CreateIndex(
                name: "IX_Curriculums_trainingid",
                table: "Curriculums",
                column: "trainingid");

            migrationBuilder.CreateIndex(
                name: "IX_Categories_role_id",
                table: "Categories",
                column: "role_id");

            migrationBuilder.CreateIndex(
                name: "IX_Categories_training_id",
                table: "Categories",
                column: "training_id");

            migrationBuilder.AddForeignKey(
                name: "FK_Categories_Roles_role_id",
                table: "Categories",
                column: "role_id",
                principalTable: "Roles",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Categories_Trainings_training_id",
                table: "Categories",
                column: "training_id",
                principalTable: "Trainings",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Curriculums_Trainings_trainingid",
                table: "Curriculums",
                column: "trainingid",
                principalTable: "Trainings",
                principalColumn: "id");

            migrationBuilder.AddForeignKey(
                name: "FK_Magazines_Papers_paper_id",
                table: "Magazines",
                column: "paper_id",
                principalTable: "Papers",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Offers_Proposes_proposeid",
                table: "Offers",
                column: "proposeid",
                principalTable: "Proposes",
                principalColumn: "id");

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistCurriculumRoles_Curriculums_curriculum_id",
                table: "ScientistCurriculumRoles",
                column: "curriculum_id",
                principalTable: "Curriculums",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistCurriculumRoles_Roles_role_id",
                table: "ScientistCurriculumRoles",
                column: "role_id",
                principalTable: "Roles",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ScientistCurriculumRoles_Scientists_scientist_id",
                table: "ScientistCurriculumRoles",
                column: "scientist_id",
                principalTable: "Scientists",
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
                name: "FK_Scientists_Users_user_id",
                table: "Scientists",
                column: "user_id",
                principalTable: "Users",
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
    }
}
