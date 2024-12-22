using BlazorApi.Models.Category;
using BlazorApi.Models.Scientist;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BlazorApi.Models.Magazine
{
    public class Magazines
    {
        [Key]
        public string id { get; set; }
        public string magazine_name { get; set; }
        public int year { get; set; }
        public string journal {  get; set; }

        [ForeignKey(nameof(Paper))]
        public string paper_id { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
