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

    public async Task DeleteFileFromFolderAsync(string fileId, string folderId)
    {
        try
        {
            var file = await _driveService.Files.Get(fileId).ExecuteAsync();

            if (file.Parents != null && file.Parents.Contains(folderId))
            {
                var request = _driveService.Files.Delete(fileId);
                await request.ExecuteAsync();
                Console.WriteLine($"File with ID {fileId} deleted from folder.");
            }
            else
            {
                Console.WriteLine($"File with ID {fileId} is not in the specified folder.");
            }
        }
        catch (Google.GoogleApiException apiEx)
        {
            if (apiEx.Error.Code == 404)
            {
                Console.WriteLine($"File with ID {fileId} not found.");
            }
            else
            {
                Console.WriteLine($"Error: {apiEx.Message}");
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error: {ex.Message}");
        }
    }


}
