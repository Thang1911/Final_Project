using Google.Apis.Auth.OAuth2;
using Google.Apis.Drive.v3;
using Google.Apis.Services;

public class GoogleDriveServices
{
    private readonly DriveService _driveService;

    public GoogleDriveServices()
    {
        var credential = GoogleCredential.FromFile("service-account.json")
            .CreateScoped(DriveService.ScopeConstants.DriveFile);

        _driveService = new DriveService(new BaseClientService.Initializer
        {
            HttpClientInitializer = credential,
            ApplicationName = "Public File Store"
        });
    }

    public async Task<string> UploadFileAsync(Stream fileStream, string fileName, string folderId)
    {
        try
        {
            var fileMetadata = new Google.Apis.Drive.v3.Data.File
            {
                Name = fileName,
                Parents = new List<string> { folderId }
            };

            var request = _driveService.Files.Create(fileMetadata, fileStream, "application/octet-stream");
            request.Fields = "id";
            var result = await request.UploadAsync();

            if (result.Status == Google.Apis.Upload.UploadStatus.Completed)
            {
                return request.ResponseBody.Id;
            }
            else
            {
                throw new Exception($"Upload failed. Status: {result.Status}, Error message: {result.Exception?.Message}");
            }
        }
        catch (Exception ex)
        {
            throw new Exception($"Failed to upload file. Exception: {ex.Message}");
        }
    }


    public async Task MakeFilePublicAsync(string fileId)
    {
        var permission = new Google.Apis.Drive.v3.Data.Permission
        {
            Type = "anyone",
            Role = "reader"
        };

        var request = _driveService.Permissions.Create(permission, fileId);
        request.Fields = "id";
        await request.ExecuteAsync();
    }
}
