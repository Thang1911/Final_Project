using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BlazorFE.Migrations
{
    /// <inheritdoc />
    public partial class updateTopic : Migration
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
        }
    }
}
