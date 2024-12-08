namespace BlazorApi.Models.Project
{
    public class ProjectmemberDto
    {
        public string UserId { get; set; } // Mã người dùng (giảng viên hoặc sinh viên)

        // Khóa ngoại đến bảng Dự án (Project)
        public string ProjectId { get; set; } // Mã dự án

        // Khóa ngoại đến bảng Đề xuất nghiên cứu (ResearchProposal)
        public string ProposalId { get; set; } // Mã đề xuất nghiên cứu

        public string Role { get; set; } // Vai trò của thành viên trong dự án (Giảng viên, Sinh viên, Người quản lý, vv.)

        public DateTime AddedAt { get; set; } // Thời gian thêm thành viên vào dự án/đề xuất
        public DateTime? RemovedAt { get; set; } // Thời gian thành viên rời khỏi dự án/đề xuất (nullable)
    }
}
