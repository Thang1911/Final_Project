using System.ComponentModel.DataAnnotations;
using BlazorApi.Enums;

namespace BlazorApi.Models.Scientist
{
    public class Scientist
    {
        [Key]
        public string id { get; set; }
        public string user_id { get; set; }
        public string profile_id { get; set; }
        public DateTime birthday { get; set; }
        public Gender gender { get; set; }
        public string birth_place { get; set; }
        public string address { get; set; }
        public int office_phone {  get; set; }
        public int house_phone {  get; set; }
        public string phone { get; set; }
        public string email { get; set; }
        public string degree_Id { get; set; }
        public string nvestiture { get; set; }
        public string scientific_title { get; set; }
        public string research_major { get; set; }
        public string research_title { get; set; }
        public string research_position { get; set; }
        public string office_id { get; set; }
        public string address_office { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
