
// chờ tải tài liệu xuống rồi mới thực hiện

$(document).ready(function() {
    changeImg();
});

// sự kiện show
function setUpEvent() {
    // show
    $('#show').click(function() {
        $('#img_id').slideDown();
    });

    // hide
    $('#hide').click(function() {
        $('#img_id').slideUp();
    })

    // toggle
    $('#change').click(function() {
        $('#img_id').slideToggle();
    })
}

function setUpEvent2() {
    // show
    $('#show').click(function() {
        $('#img_id').fadeIn();
    });

    // hide
    $('#hide').click(function() {
        $('#img_id').fadeOut();
    })

    // toggle
    $('#change').click(function() {
        $('#img_id').fadeToggle(500, function() { alert("Đã xong")});
    })
}

// ==================================================================
// tạo animation
var status = 1;

function changeImg() {
    $('#img_id').stop(true);
    if (status == 1) {
        status = 2;
        sizeDown(); 
    } else {
        status = 1;
        sizeUp();
    }
}

function sizeDown() {
    $('#img_id').animate(
        {
            width: '100px',
            opacity: 0.2
        },
        3000,
        'linear',
        changeImg
    );
}

function sizeUp() {
    $('#img_id').animate(
        {
            width: '500px',
            opacity: 1
        },
        3000,
        'linear',
        changeImg
    )
}