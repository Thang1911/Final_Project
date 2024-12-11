using System.ComponentModel.DataAnnotations;
using System.Drawing;

namespace BlazorApi.Models.Council
{
    public class Council
    {
        [Key]
        public string id { get; set; }
        public int decision_number { get; set; }
        public DateTime date { get; set; }
        public string lvcouncil_id { get; set; }
        public string tpcouncil_id { get; set; }
        public string council_name { get; set; }
        public int year { get; set; }
    }
}
