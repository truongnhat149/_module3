$(document).ready(function () {

    // progressbar
    $("#my-prgb").progressbar({
        value: false,
        change: function () {
            var c_value = $("#my-prgb").progressbar("value");
            $("#my-prb-label").html(c_value + "%");
        },
        complete: function () {
            $("#my-prb-label").html("Đã xong");
        },
    });

    //datepicker
    $('#my-birthday').datepicker({
        dateFormat: "dd/mm/yy",
        minDate: "14/09/1998",
        maxDate: "1/3/2022"
    });

    // tooltip
    $("#test-tool").tooltip({
        // track khi rê chuột đến đâu thì tooltip theo đến đó
        track: true
    });

    $(function () {
        $("#datepicker").datepicker({
            dateFormat: "dd/mm/yy",
            minDate: "14/09/1998",
            maxDate: "1/3/2022"
        });
    });

    
});

function startProgressbar() {
    var c_value = $("#my-prgb").progressbar("value") + 1;
    $("#my-prgb").progressbar("value", c_value);
    if (c_value < 100) {
        setTimeout("startProgressbar()", 100);
    }
};


// function progressb() {
//     var c_value = $("#my-prgb").progressbar("value") + 1;
//     $("#my-prgb").progressbar("value", c_value);
//     if (c_value < 100) {
//         setTimeout("progressb()", 100);
//     }
// };