var url = 'http://ajax-json.cione.vn/api/vl/products';
var xhr = new XMLHttpRequest();
var output = document.getElementById('output');

xhr.onreadystatechange = handleResult;
xhr.open('GET', url);
xhr.send();

function handleResult() {
    if (xhr.readyState === XMLHttpRequest.DONE) {
        output.innerHTML = xhr.responseText;
    }
}

//  =========================================================================
function loadImage() {
    $.ajax("http://127.0.0.1:5500/ajax/create-ajax-request/i.html")
    .done(function(result){
        $("#msg").html(result);
    })
}