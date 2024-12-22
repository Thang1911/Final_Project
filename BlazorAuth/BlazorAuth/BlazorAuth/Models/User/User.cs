namespace BlazorAuth.Models.User
{
    public class Users
    {
        public string id { get; set; }
        public string name { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public bool isAdmin { get; set; }
        public string remember_token { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
        public string google_id { get; set; }
    }
}
