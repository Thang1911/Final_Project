using System.ComponentModel.DataAnnotations;

namespace BlazorFE.Enums
{
    public enum CategoryType
    {
        [Display(Name = "Đề án")]
        Topic = 0, 
        [Display(Name = "Đề tài")]
        Project = 1
    }
}
