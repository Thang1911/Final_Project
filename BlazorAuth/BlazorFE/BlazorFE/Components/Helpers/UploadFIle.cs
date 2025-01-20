using Microsoft.AspNetCore.Components.Forms;

namespace BlazorFE.Components.Helpers
{
    public class UploadFIle
    {
        public static void HandleFileSelected(InputFileChangeEventArgs e, IBrowserFile selectedFile)
        {
            var files = e.GetMultipleFiles();
            if (files.Any())
            {
                selectedFile = files.First();
            }
        }
    }
}
