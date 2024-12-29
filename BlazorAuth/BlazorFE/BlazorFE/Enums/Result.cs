using System.ComponentModel.DataAnnotations;

namespace BlazorFE.Enums
{
    public enum Result
    {
        [Display(Name = "Chưa kết thúc")]
        Chưa_kết_thúc = 4,

        [Display(Name = "Khá")]
        Khá = 1,

        [Display(Name = "Giỏi")]
        Giỏi = 2,

        [Display(Name = "Xuất sắc")]
        Xuất_sắc = 3
    }
}
