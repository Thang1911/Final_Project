
using System.ComponentModel.DataAnnotations;

namespace BlazorFE.Models.Category
{
    public class TpCouncil
    {
        [Key]
        public string id { get; set; }

        // Preserving the tpCouncil_id field
        public string tpCouncilId { get; set; }

        public string tpcouncil_name { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
