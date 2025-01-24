using System.ComponentModel.DataAnnotations;

namespace BlazorFE.Models.Category
{
    public class MagazineScore
    {
        [Key]
        public string id { get; set; }
        public string magazine_score_name { get; set; }
        public string scope { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
