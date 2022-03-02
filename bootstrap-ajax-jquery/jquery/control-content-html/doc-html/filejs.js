// chờ tài liệu tải xuôngs

$(document).ready(function () {
    
    // cài đặt sự kiện đọc html
    document.getElementById('btn1').onclick = function() {
        var html = $('#div1').html();
        alert(html);
    }
    
    // cài đặt sự kiện gán html
    document.getElementById('btn2').onclick = function() {
        $('#div1').html("<b>Hiện chữ in đậm lên</b>");
    }

    // cài đặt sự kiện đọc text
    document.getElementById('btn3').onclick = function() {
        var text = $('#div1').text();
        alert(text);
    }

    // cài đặt sự kiện gán text

    document.getElementById('btn4').onclick = function() {
        $('#div1').text('<b>Hiện chữ in đậm lên text</b>');
    }
});
