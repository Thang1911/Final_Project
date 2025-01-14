namespace BlazorFE.Components.Helpers
{
    public static class LabelHelper
    {
        public static string GetStatusLabel(string status)
        {
            return status switch
            {
                "Chờ duyệt" => "dark",
                "Đã tham gia" => "success",
                "Bị từ chối" => "warning",
                _ => "default"
            };
        }
    }
}
