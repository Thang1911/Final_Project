using System.ComponentModel.DataAnnotations;

namespace BlazorFE.Enums
{
    public enum Result
    {
        [Display(Name = "Chưa kết thúc")]
        Chưa_kết_thúc,

        [Display(Name = "Khá")]
        Khá,

        [Display(Name = "Giỏi")]
        Giỏi,

        [Display(Name = "Xuất sắc")]
        Xuất_sắc
    }
}
