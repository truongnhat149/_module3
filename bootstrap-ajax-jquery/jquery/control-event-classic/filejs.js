
// chờ tài liệu tải xuống và sẵn sàng
$(document).ready(function() {
    $(window).resize(resizeHappend);
});

function resizeHappend() {
    var x = $(window).width();
    var y = $(window).height();
    $('.status').html("Trình duyệt rộng : " + x + "px và cao " + y + "px");
}