using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using BlazorFE.Models.Council;

namespace BlazorFE.Models.Topic
{
    public class CouncilTopics
    {
        [Key]
        public string id { get; set; }

        [ForeignKey(nameof(Council))]
        public string council_id { get; set; }
        public virtual council? Council { get; set; }

        [ForeignKey(nameof(Topics))]
        public string topic_id { get; set; }
        public virtual Topics? Topic { get; set; }

        public string decision { get; set; }
        public DateTime reviewed_at { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
