using System.ComponentModel.DataAnnotations;

namespace BlazorApi.Models.Project
{
    public class Project
    {
        [Key]
        public string ProjectId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public decimal Budget { get; set; }
        public int Duration { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public string Status { get; set; }
    }
}
