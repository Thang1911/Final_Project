﻿using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using BlazorFE.Enums;
using BlazorFE.Models.Scientist;
using BlazorFE.Models.Category;

namespace BlazorFE.Models.Topic
{
    public class Topics
    {
        [Key]
        public string id { get; set; }
        public string topic_name { get; set; }
        public Result result {  get; set; }
        [ForeignKey(nameof(LvTopics))]
        public string lvtopic_id { get; set; }
        public DateTime start_date { get; set; }
        public DateTime end_date { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
