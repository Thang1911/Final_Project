﻿using System.ComponentModel.DataAnnotations;

namespace BlazorApi.Models.Scientist
{
    public class scientist_curriculum_role
    {
        [Key]
        public string id { get; set; }
        public string scientist_id { get; set; }
        public string curriculum_id { get; set; }
        public string role_id { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
