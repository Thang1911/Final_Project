using System.ComponentModel.DataAnnotations;

namespace BlazorFE.Enums.Magazine
{
    public enum MagazineRank
    {
        [Display(Name = "Chưa xếp hạng")]
        Chưa_xếp_hạng,

        [Display(Name = "Q1")]
        Q1,

        [Display(Name = "Q2")]
        Q2,

        [Display(Name = "Q3")]
        Q3,

        [Display(Name = "Q4")]
        Q4,

        [Display(Name = "Không xếp hạng")]
        Không_xếp_hạng,
    }
}
