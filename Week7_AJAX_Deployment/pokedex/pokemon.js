$(document).ready(function(){

    $('img').click(function(){
        var id = $(this).attr('id');
        $.ajax({
            method: 'get',
            url: 'http://pokeapi.co/api/v2/pokemon/'+id,
            success: function(response){
                var html_str = '<h1>'+response.name+'</h1>';
                html_str += '<p>'+response.weight+'</p>';
                $('div').html(html_str);
            },
            dataType: 'json'
        })
    })

})