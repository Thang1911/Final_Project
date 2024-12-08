using System.ComponentModel.DataAnnotations;

namespace BlazorApi.Models.Project
{
    public class ProjectMember
    {
        [Key]
        public string ProjectMemberId { get; set; } // Mã định danh thành viên (Khóa chính)

        // Khóa ngoại đến bảng Người dùng (User) để xác định giảng viên hoặc sinh viên
        public string UserId { get; set; } // Mã người dùng (giảng viên hoặc sinh viên)

        // Khóa ngoại đến bảng Dự án (Project)
        public string ProjectId { get; set; } // Mã dự án

        // Khóa ngoại đến bảng Đề xuất nghiên cứu (ResearchProposal)
        public string ProposalId { get; set; } // Mã đề xuất nghiên cứu

        public string Role { get; set; } // Vai trò của thành viên trong dự án (Giảng viên, Sinh viên, Người quản lý, vv.)

        // Mối quan hệ với bảng Người dùng (User) - Thông tin về thành viên (giảng viên hoặc sinh viên)
        public User User { get; set; }

        // Mối quan hệ với bảng Dự án (Project)
        public Project Project { get; set; }

        // Mối quan hệ với bảng Đề xuất nghiên cứu (ResearchProposal)
        public ProjectProposal ProjectProposal { get; set; }

        public DateTime AddedAt { get; set; } // Thời gian thêm thành viên vào dự án/đề xuất
        public DateTime? RemovedAt { get; set; } // Thời gian thành viên rời khỏi dự án/đề xuất (nullable)
    }
}
