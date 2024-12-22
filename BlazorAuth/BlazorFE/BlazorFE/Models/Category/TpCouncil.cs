
using System.ComponentModel.DataAnnotations;

namespace BlazorFE.Models.Category
{
    public class TpCouncil
    {
        [Key]
        public string id { get; set; }
        public string tpcouncil_id { get; set; }
        public string tpcouncil_name { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
