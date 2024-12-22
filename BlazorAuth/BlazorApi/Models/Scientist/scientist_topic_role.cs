using BlazorApi.Models.Category;
using BlazorApi.Models.Topic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BlazorApi.Models.Scientist
{
    public class scientist_topic_role
    {
        [Key]
        public string id { get; set; }
        [ForeignKey("Scientist")]
        public string scientist_id { get; set; }
        [ForeignKey("Topics")]
        public string topic_id { get; set; }
        [ForeignKey("Role")]
        public string role_id { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
