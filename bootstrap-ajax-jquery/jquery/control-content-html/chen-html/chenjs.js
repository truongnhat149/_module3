// chờ tải trang xong mới bắt đầu làm việc
$(document).ready(function () {

    // cài đặt sự kiện thêm vào cuối html
    document.getElementById('btn1').onclick = function () {
        $('#div1').append("<b> Nội dung in đậm thêm vào cuối html </b>");
    }

    // cài đặt sự kiện thêm vào đầu html
    document.getElementById('btn2').onclick = function() {
        $('#div1').prepend("<b> Nội dung in đậm thêm vào đầu html </b>");
    }

    // cài đặt sự kiện thêm vào cuối html (chú ý phương thức) 
    document.getElementById('btn3').onclick = function() {
        $("<b> Nội dung in đậm thêm vào cuối html </b>").appendTo('#div1');
    }

    // cài đặt sự kiện thêm vào đầu html (chú ý phương thức)
    document.getElementById('btn4').onclick = function() {
        $("<b> Nội dung in đậm thêm vào cuối html </b>").prependTo('#div1');
    }
});