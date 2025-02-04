using BlazorFE.Models.Category;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BlazorFE.Models.Council
{
    public class council
    {
        [Key]
        public string id { get; set; }
        public int decision_number { get; set; }
        public DateTime date { get; set; }

        [ForeignKey(nameof(LvCouncil))]
        public string lvCouncilId { get; set; }
        public virtual LvCouncil? lvCouncil { get; set; }

        [ForeignKey(nameof(TpCouncil))]
        public string tpCouncilId { get; set; }
        public virtual TpCouncil? tpCouncil { get; set; }
        public string council_name { get; set; }
        public int year { get; set; }
    }
}
