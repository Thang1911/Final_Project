function DestroyDataTable(table) {
    if ($.fn.DataTable.isDataTable(table)) {
        $(table).DataTable().destroy();
    }
}
function AddDataTable(table, searching) {
    DestroyDataTable(table);

    if ($(table).find("thead").length === 0) {
        console.error("Error: Table must have a <thead> element.");
        return;
    }

    if ($(table).find("tbody tr").length === 0) {
        console.log("Table has no data, skipping DataTable initialization.");
        return;
    }

    $(table).DataTable({
        "searching": searching,
        "lengthChange": false,
        "language": {
            "info": "Hiển thị _START_ đến _END_ của _TOTAL_ mục",
            "infoEmpty": "Không có mục nào",
            "infoFiltered": "(được lọc từ _MAX_ mục)",
            "lengthMenu": "Hiển thị _MENU_ mục",
            "search": "Tìm kiếm:",
            "paginate": {
                "first": "Đầu",
                "last": "Cuối",
                "next": "Tiếp",
                "previous": "Trước"
            }
        },
        "dom": "Bfrtip",
        "buttons": [
            {
                extend: "pdfHtml5",
                text: "Xuất PDF",
                title: "Danh sách",
                className: "btn btn-success",
                exportOptions: {
                    columns: ':not(:last-child)'
                }
            }
        ]
    });
}

function exportTableToPDF(table) {
    $(table).DataTable().buttons(0, 0).trigger();
}

