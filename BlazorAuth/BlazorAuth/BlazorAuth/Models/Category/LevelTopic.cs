namespace BlazorAuth.Models.Category
{
    public class LevelTopics
    {
        public string id { get; set; }
        public string lvtopic_name { get; set; }
        public BlazorApi.Enums.CategoryType category { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
