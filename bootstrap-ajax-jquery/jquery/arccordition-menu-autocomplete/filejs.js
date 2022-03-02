$(document).ready(function () {
    $("#my-accordion").accordion(
        {
            heightStyle: 'content'
        }
    );



    // autocomple tự động điền 
    var data = 
    [
        "thư viện", "lập trình viên", "code-gym" , "học code" , " ai đẹp trai", "trường"
    ];

    $("#auto-complete").autocomplete({
        delay: 1,
        source: data
    });


    // menu
    $("#me-menu").menu();
});

