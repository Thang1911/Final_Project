﻿function DestroyDataTable(table) {
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
        }
    });
}

function DestroySelect2(select) {
    if ($(select).hasClass("select2-hidden-accessible")) {
        $(select).select2('destroy');
    }
}

function AddSelect2(select, placeholder = "Chọn một mục", allowClear = true) {
    DestroySelect2(select);

    if ($(select).length === 0) {
        console.error("Error: Select element not found.");
        return;
    }

    $(select).select2({
        placeholder: placeholder,
        allowClear: allowClear,
        width: '100%'
    });
}


