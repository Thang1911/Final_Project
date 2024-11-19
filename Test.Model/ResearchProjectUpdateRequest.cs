using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Test.Model.Enums;

namespace Test.Model
{
    public class ResearchProjectUpdateRequest
    {
        public string ProjectName { get; set; }
        public string ProjectDescription { get; set; }
        public string ProjectImage { get; set; }
        public string Advisor { get; set; }
        public string Students { get; set; }
        public Status Status { get; set; }
        public DateTime UpdatedAt { get; set; }
    }
}
