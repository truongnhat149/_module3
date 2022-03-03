// chờ tài liệu tải xong thì mới sẵn sàng làm nhiệm vụ
$(document).ready(function() {

    // select menu: bước 1: định nghĩa lại hàm render select menu
    
    $widget("customer.selectmenuwithavatar", $.ui.selectmenu, {
    
        _renderItem: function (ul, item) {
            // mỗi  item là một là 1 thẻ <li>
            var li = $('<li>');
    
            // thêm class  đánh dấu  disable  vào thẻ <li>  (nếu có) 
            if (item.disabled) {
                li.addClass("ui-state-disabled");
            }
    
            // mỗi thẻ <li>  chứa thẻ <div> nội dung
            var wrapper = $("<div>", {
                text: item.label 
            });
            // trong thẻ div lại có thẻ span và text  làm avatar
            $('<span>', {
                style: item.element.attr("dataStyle"),
                "class": item.element.attr('dataClass') + "ui-icon"
            }).appendTo(wrapper);
    
            // trả về 1 item sau khi render
            return li.append(wrapper).appendTo(ul);
        }
        
    });
    // select bước 2: sử dụng
    $('#mySeclect').selectmenuwithavatar();
    


    /// check box radio

    $( "input" ).checkboxradio();
});