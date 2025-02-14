using iText.Kernel.Pdf;
using iText.Layout;
using iText.Layout.Element;
using iText.Layout.Properties;
using iText.Kernel.Colors;
using iText.Kernel.Font;
using iText.IO.Image;
using iText.Layout.Borders;
using iText.IO.Font.Constants;

public class PdfServices
{
    public byte[] GeneratePdfWithDynamicTable(List<string> headers, List<List<string>> data)
    {
        using (var memoryStream = new MemoryStream())
        {
            using (var writer = new PdfWriter(memoryStream))
            {
                using (var pdf = new PdfDocument(writer))
                {
                    var document = new Document(pdf);

                    // ** 1. Thêm Logo **
                    Image logo = new Image(ImageDataFactory.Create("wwwroot/logo.png")).ScaleToFit(100, 50);
                    document.Add(logo.SetHorizontalAlignment(HorizontalAlignment.CENTER));

                    // ** 2. Thêm Tiêu đề **
                    PdfFont font = PdfFontFactory.CreateFont(StandardFonts.HELVETICA_BOLD);
                    document.Add(new Paragraph("Báo Cáo Dữ Liệu")
                        .SetFont(font)
                        .SetFontSize(20)
                        .SetFontColor(ColorConstants.BLUE)
                        .SetTextAlignment(TextAlignment.CENTER)
                        .SetMarginBottom(20));

                    // ** 3. Tạo bảng động dựa trên headers **
                    Table table = new Table(UnitValue.CreatePercentArray(headers.Count)).UseAllAvailableWidth();

                    // ** 4. Thêm tiêu đề cột **
                    foreach (var header in headers)
                    {
                        table.AddHeaderCell(new Cell().Add(new Paragraph(header)
                            .SetFont(PdfFontFactory.CreateFont(StandardFonts.HELVETICA_BOLD))) // Đặt font đậm
                            .SetBackgroundColor(ColorConstants.LIGHT_GRAY)
                            .SetTextAlignment(TextAlignment.CENTER));
                    }

                    // ** 5. Thêm dữ liệu vào bảng **
                    foreach (var row in data)
                    {
                        foreach (var cell in row)
                        {
                            table.AddCell(new Cell().Add(new Paragraph(cell))
                                .SetBorder(new SolidBorder(1))
                                .SetTextAlignment(TextAlignment.CENTER));
                        }
                    }

                    document.Add(table.SetMarginBottom(20));

                    // ** 6. Thêm Ghi chú cuối trang **
                    document.Add(new Paragraph("Báo cáo được tạo vào " + DateTime.Now.ToString("dd/MM/yyyy"))
                        .SetFont(PdfFontFactory.CreateFont(StandardFonts.TIMES_ITALIC)) // Dùng font nghiêng
                        .SetFontSize(10)
                        .SetTextAlignment(TextAlignment.RIGHT));
                }
            }
            return memoryStream.ToArray();
        }
    }
}
