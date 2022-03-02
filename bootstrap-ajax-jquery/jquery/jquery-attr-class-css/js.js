// chờ tải tài liệu xong

$(document).ready(function () {
    // lệnh trong đây chỉ chạy khi tài liệu tải xong
    var btb = document.getElementById('btbChangeImage');
    btb.onclick = ChangeImage();
});

var CurrentImage = 1;

var btn1 = document.getElementById('test');
btn1.onclick = alertt1() {
    alert();
};


function ChangeImage() {
    if (CurrentImage == 1) {
        $('#hinh').addClass('w2');
        CurrentImage = 2;
    } else if (CurrentImage == 2) {
        $('#hinh').addClass('w3');
        CurrentImage = 3;
    } else {
        $('#hinh').removeClass('w2').removeClass('w3');
        CurrentImage = 1;
    }
}