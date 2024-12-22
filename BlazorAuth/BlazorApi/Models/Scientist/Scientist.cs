﻿using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using BlazorApi.Enums;
using BlazorApi.Models.User;

namespace BlazorApi.Models.Scientist
{
    public class Scientist
    {
        [Key]
        public string id { get; set; }
        [ForeignKey("User")]
        public string user_id { get; set; }
        public string profile_id { get; set; }
        public string profile_name { get; set; }
        public DateTime birthday { get; set; }
        public Gender gender { get; set; }
        public string birth_place { get; set; }
        public string address { get; set; }
        public string office_phone {  get; set; }
        public string house_phone {  get; set; }
        public string phone { get; set; }
        public string email { get; set; }
        public int degree_Id { get; set; }
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