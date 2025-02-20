
using BlazorFE.Models.Category;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BlazorFE.Models.Curriculum
{
    public class Curriculums
    {
        [Key]
        public string id { get; set; }
        public string name { get; set; }
        public int year { get; set; }
        public int? month { get; set; }
        public int? day { get; set; }
        public string publisher { get; set; }

        [ForeignKey(nameof(Book))]
        public string book_id { get; set; }
        public virtual Book? Book { get; set; }

        [ForeignKey(nameof(Training))]
        public string training_id { get; set; }
        public virtual Training? Training { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
