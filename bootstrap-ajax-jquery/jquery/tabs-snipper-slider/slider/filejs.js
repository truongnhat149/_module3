$(document).ready(function() {
    $("#mySlider1").slider({
        min: 0,
        max: 100,
        step : 1,
        slide: function() {
           var value = $(this).slider("value");
           $("#value-1").html(value);
        }
    });

    $("#mySlider2").slider({
       orientation: "vertical" ,
       stop: function() {
           var value = $(this).slider("value");
           $("#value-2").html(value);
       }
    });
});