// $(document).ready(function() {
//     $('#my-dialog').dialog();
// });

$(document).ready(function () {
    $("#my-dialog").dialog({
        autoOpen: false,
        show : 
        {
            effect : "blind", 
            duration : 1000
        },
        hide: {
            effect : "explode",
            duration : 1000
        },
        resizable : false,
        modal: true,
        buttons: {
            "Đồng ý" : 
            function () {
                $("#msg").html("Bạn đã đồng ý, Bấm tắt để đóng");
            },
            "Tắt" : 
            function () {
                $(this).dialog("close");
            }
        }
        
    }) 
});

function loadDialog() {
    $("#my-dialog").dialog("open");
}