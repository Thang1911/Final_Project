using BlazorFE.Models.Category;
using BlazorFE.Models.Scientist;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BlazorFE.Models.Magazine
{
    public class Magazines
    {
        [Key]
        public string id { get; set; }
        public string magazine_name { get; set; }
        public int year { get; set; }
        public string journal {  get; set; }

        [ForeignKey("Paper")]
        public string paper_id { get; set; }
        public virtual Paper? Paper { get; set; }
        public string magazine_type { get; set; }
        public string magazine_scope { get; set; }
        public string index_score { get; set; }
        public string rank { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
