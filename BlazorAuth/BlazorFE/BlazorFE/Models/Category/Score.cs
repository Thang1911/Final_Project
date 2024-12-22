using System.ComponentModel.DataAnnotations;

namespace BlazorFE.Models.Category
{
    public class Score
    {
        [Key]
        public string id { get; set; }
        public int year { get; set; }
        public string decision_num { get; set; }
        public string tbscore_name { get; set; }
        public int mark { get; set; }
        public string council { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
