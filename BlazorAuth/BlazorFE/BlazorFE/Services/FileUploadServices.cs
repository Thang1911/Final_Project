using BlazorFE.Data;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace BlazorFE.Services
{
    public class FileUploadServices
    {
        private readonly ApplicationDbContext _context;

        public FileUploadServices(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<Models.File.File> UploadFileAsBase64Async(string fileName, Stream fileStream, string relatedId, string relatedType)
        {
            using (var memoryStream = new MemoryStream())
            {
                await fileStream.CopyToAsync(memoryStream);
                var base64Content = Convert.ToBase64String(memoryStream.ToArray());

                var fileRecord = new Models.File.File
                {
                    id = Guid.NewGuid().ToString(),
                    original_name = fileName,
                    file_path = base64Content,
                    file_type = Path.GetExtension(fileName),
                    related_id = relatedId,
                    related_type = relatedType,
                    created_at = DateTime.Now,
                    updated_at = DateTime.Now
                };

                _context.Files.Add(fileRecord);
                await _context.SaveChangesAsync();

                return fileRecord;
            }
        }

        public async Task<List<Models.File.File>> GetAllFilesAsync()
        {
            return await _context.Files.ToListAsync();
        }

        public async Task<(string FileName, byte[] FileContent)> DownloadFileAsync(string id)
        {
            var fileRecord = await _context.Files.FindAsync(id);
            if (fileRecord == null)
                return (null, null);

            var fileContent = Convert.FromBase64String(fileRecord.file_path);
            return (fileRecord.original_name, fileContent);
        }

        public async Task<Models.File.File> UpdateFileAsync(string id, string fileName, Stream fileStream, string? relatedId, string? relatedType)
        {
            var fileRecord = await _context.Files.FindAsync(id);
            if (fileRecord == null)
            {
                return null;
            }

            using (var memoryStream = new MemoryStream())
            {
                await fileStream.CopyToAsync(memoryStream);
                fileRecord.file_path = Convert.ToBase64String(memoryStream.ToArray());
            }

            fileRecord.original_name = fileName;
            fileRecord.file_type = Path.GetExtension(fileName);
            fileRecord.related_id = relatedId ?? fileRecord.related_id;
            fileRecord.related_type = relatedType ?? fileRecord.related_type;
            fileRecord.updated_at = DateTime.Now;

            _context.Files.Update(fileRecord);
            await _context.SaveChangesAsync();

            return fileRecord;
        }

        // Get files by relatedId and relatedType
        public async Task<List<Models.File.File>> GetFilesByRelatedIdAndTypeAsync(string relatedId, string relatedType)
        {
            return await _context.Files
                .Where(f => f.related_id == relatedId && f.related_type == relatedType)
                .ToListAsync();
        }

    }
}
