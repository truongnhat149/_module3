$(document).ready(function() {
    $("#mySpinner").spinner({
        min: 0,
        max: 100,
        step: 1,
        numberFormat: "n",
        // stop thay đổi ngay sau khi giá trị thay đổi
        // start , spin giống nhau ở việc thay đổi giá trị
        // change: sau khi focus ra ngoài mới thay đổi
        change: function() {
            var value = $(this).spinner("value");
            $("#spinner-id").html(value);
        }
    });
});