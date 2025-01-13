using System.ComponentModel.DataAnnotations;

namespace BlazorFE.Models.Category
{
    public class LvCouncil
    {
        [Key]
        public string id { get; set; }
        public string lvcoucil_name { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
