using System.ComponentModel.DataAnnotations;

namespace BlazorFE.Models.File
{
    public class File
    {
        [Key]
        public string id { get; set; }
        public string original_name { get; set; }
        public byte[] file_content { get; set; }
        public string file_type { get; set; }
        public string related_id { get; set; }
        public string related_type { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
    }
}
