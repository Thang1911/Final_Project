using BlazorFE.Data;
using Microsoft.EntityFrameworkCore;

namespace BlazorFE.Services
{
    public class FileUploadServices
    {
        private readonly ApplicationDbContext _context;

        public FileUploadServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<bool> UploadFileAsync(Models.File.File newFile)
        {
            using (var memoryStream = new MemoryStream())
            {
                newFile.id = Guid.NewGuid().ToString();
                try { 
                    _context.Files.Add(newFile);
                    await _context.SaveChangesAsync();

                    return true;
                } 
                catch
                {
                    return false;
                    throw;
                }
            }
        }

        public async Task<List<Models.File.File>> GetAllFilesAsync()
        {
            return await _context.Files.ToListAsync();
        }

        // Get files by relatedId and relatedType
        public async Task<List<Models.File.File>> GetFilesByRelatedIdAsync(string relatedId)
        {
            return await _context.Files
                .Where(f => f.related_id == relatedId)
                .ToListAsync();
        }

        public async Task<bool> DeleteFileAsync(string fileId)
        {
            try
            {

                var file = await _context.Files.FirstOrDefaultAsync(f => f.id == fileId);
                if (file != null)
                {
                    _context.Files.Remove(file);
                    await _context.SaveChangesAsync();
                    return true;
                }

                return false;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error deleting file: {ex.Message}");
                return false;
            }
        }
    }
}
