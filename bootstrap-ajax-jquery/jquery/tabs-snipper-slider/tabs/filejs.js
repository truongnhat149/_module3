// chờ tải tài liệu xong sự kiện mới bắt đầu

$(document).ready(function() {

    $("#myTabs").tabs({
        // collapsible khi click thêm 1 lần sẽ ẩn nội dung
        // nhưng khi sử dụng thì kh dùng được event khác
        collapsible: true,
        // event: "mouseover"
    });
});