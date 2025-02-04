using BlazorFE.Models.Conferences;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using BlazorFE.Models.Council;

namespace BlazorFE.Models.ConferenceCouncil
{
    public class ConferenceCouncils
    {
        [Key]
        public string id { get; set; }

        [ForeignKey(nameof(Conference))]
        public string conference_id { get; set; }
        public virtual Conference? Conference { get; set; }

        [ForeignKey(nameof(Council))]
        public string council_id { get; set; }
        public virtual council? Council { get; set; }
    }
}
