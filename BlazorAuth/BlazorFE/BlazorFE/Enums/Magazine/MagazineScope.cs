using System.ComponentModel.DataAnnotations;

namespace BlazorFE.Enums.Magazine
{
    public enum MagazineScope
    {
        [Display(Name = "Trong nước")]
        Trong_nước,

        [Display(Name = "Quốc tế")]
        Quốc_tế,
    }
}
