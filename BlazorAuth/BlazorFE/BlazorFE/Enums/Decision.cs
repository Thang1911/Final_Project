using System.ComponentModel.DataAnnotations;

namespace BlazorFE.Enums
{
    public enum Decision
    {
        [Display(Name = "Đạt")]
        Đạt,

        [Display(Name = "Không đạt")]
        Không_đạt,

        [Display(Name = "Cần chỉnh sửa")]
        Cần_chỉnh_sửa,
    }
}
