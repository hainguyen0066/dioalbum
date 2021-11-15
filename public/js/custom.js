
$( document ).ready(function() {
    $(document).on('click','.fancy', function(){
        e.preventDefault();
        alert('ok1');
        getAlbum($(this).data('url'));
    });
});

function getAlbum(action) {
    $.ajax({
        type: 'GET',
        url: action,
        data: {
        },
        success: function (response) {
            if (response != null) {
                alert('ok');
            }
        },
    })
}