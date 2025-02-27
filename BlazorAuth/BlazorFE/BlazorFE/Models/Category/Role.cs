﻿using System.ComponentModel.DataAnnotations;

namespace BlazorFE.Models.Category
{
    public class Role
    {
        [Key]
        public string id { get; set; }
        public string role_name { get; set; }
        public string? role_type { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
