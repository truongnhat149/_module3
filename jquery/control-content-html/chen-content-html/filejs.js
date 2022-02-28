
// việc chèn after và before sẽ trước nội dung của khối hoặc thẻ cần thêm

// hàm này có nghĩa là sau khi tải xong giao diện, mọi thứ sẵn sàng thì phương thức mới bắt đầu làm việc
$(document).ready(function() {
    // cài đặt sự kiện after (chèn nội dung ở phía sau)

    document.getElementById('btn1').onclick = function() {
        $('#div1').after("<div style='background-color: blue'> CHỮ NÃY CHÈN SAU</div>");
    }

    // cài đặt sự kiện before (chèn nội dung phía trước)
    document.getElementById('btn2').onclick = function() {
        $('#div1').before("<div style='background-color: red'> ĐÂY LÀ NỘI DUNG CHÈN TRƯỚC </div>");
    }
   
    // CÀI ĐẶT SỰ KIỆN chèn sau
    document.getElementById('btn3').onclick = function() {
        $("<div style='background-color: green'> NỘI DUNG CHÈN SAU DÙNG INSERT AFTER </div>").insertAfter('#div1')
    }

    // cài đặt sự kiện chèn trước
    document.getElementById('btn4').onclick = function() {
        $("<div style='background-color: yellow'> NỘI DUNG CHÈN TRƯỚC INSERT BEFORE </div>").insertBefore('#div1');
    }
});