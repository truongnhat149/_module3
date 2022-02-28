
// sau khi load hết thì mới khởi động function

$(document).ready(function() {

    // cài đặt sự kiện btn wrap (bao bọc bên ngoài)
    document.getElementById('btn1').onclick = function() {
        $('#btn1').wrap('<div style="background-color: green">NỘI DUNG CHÈN VÀO</div>');
    }

    // CÀI ĐẶT SỰ KIỆN BTN wrap all (bao bọc tất cả)
    document.getElementById('btn2').onclick = function() {
        $('#btn2').wrapAll('<div style="background-color: blue" class="wrap2">NỘI DUNG CHÈN VÀO WRAP ALL</div>');
    }

    // cài đặt sự kiện wrapinner
    document.getElementById('btn3').onclick = function() {
        $('#btn3').wrapInner('<div><p>Đây là nội dung file text</p></div>');
    }
});