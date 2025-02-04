using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using BlazorFE.Models.Category;
using BlazorFE.Models.Conferences;

namespace BlazorFE.Models.Topic
{
    public class ConferenceTopics
    {
        [Key]
        public string id { get; set; }

        [ForeignKey(nameof(Conference))]
        public string conference_id { get; set; }
        public virtual Conference? Conference { get; set; }

        [ForeignKey(nameof(Topics))]
        public string topic_id { get; set; }
        public virtual Topics? Topic { get; set; }

        public DateTime presentation_date { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
