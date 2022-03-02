
// CHỜ TÀI LIỆU TẢI XONG THÌ THỰC HIỆN LÊNH

$(document).ready(function(e) {
    hideShow();
});


function hideShow() {
    
    // bắt sự kiện show
    $('#show').click(function() {
        $('#img_id').show(500, function(){
            alert("Đã showw");
        });
    });

    // bắt sự kiện hide

    $('#hide').click(function() {
        $('#img_id').hide(500, function() {
            alert("Đã hide");
        });
    });


    // sự kiện change
    $('#change').click(function() {
        $('#img_id').toggle(500);
    });
}