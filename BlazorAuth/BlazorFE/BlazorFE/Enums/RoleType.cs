using System.ComponentModel.DataAnnotations;

namespace BlazorFE.Enums
{
    public enum RoleType
    {
        [Display(Name = "Đề tài")]
        topic,
        [Display(Name = "Báo chí")]
        magazine,
        [Display(Name = "Giáo trình")]
        curriculum
    }
}
