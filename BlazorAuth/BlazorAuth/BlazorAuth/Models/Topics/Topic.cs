using BlazorApi.Enums;

namespace BlazorAuth.Models.Topics
{
    public class Topic
    {
        public string id { get; set; }
        public string topic_name { get; set; }
        public Result result { get; set; }
        public string lvtopic_id { get; set; }
        public DateTime start_date { get; set; }
        public DateTime end_date { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
