﻿using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BlazorFE.Models.Category
{
    public class Categories
    {
        [Key]
        public string id { get; set; }
        [ForeignKey(nameof(Role))]
        public string role_id { get; set; }
        public virtual Role? Role { get; set; }
        public string category_name { get; set; }
        public string type { get; set; }

        [ForeignKey(nameof(Training))]
        public string training_id { get; set; }
        public virtual Training? Training { get; set; }
        public int research_number { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
