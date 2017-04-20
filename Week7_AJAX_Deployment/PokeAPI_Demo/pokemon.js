$(document).ready(function(){
    // console.log('jquery ready!');
    $('form').submit(function(event){
        event.preventDefault();
        
        // console.log('click action');
        // var rando = Math.floor(Math.random() * 151) + 1;
        var pokemon_id = $('#pokemon_id').val();
        $.ajax({
            method: 'get',
            url: 'http://pokeapi.co/api/v2/pokemon/'+pokemon_id,
            success: function(response){
                console.log(response);
                //target the tbody and append a tr
                // build the tr with the pokemon info in td tags
                var html_str = '<tr>';
                    html_str += '<td>'+response.id+'</td>';
                    html_str += '<td>'+response.name+'</td>';
                    html_str += '<td>'+response.weight+'</td>';
                var abilities_str = '<td>';
                for (var i = 0; i < response.abilities.length; i++){
                    abilities_str += response.abilities[i].ability.name + ', ';
                }
                    abilities_str += '</td>';
                    html_str += abilities_str;
                    html_str += '<td><img src="'+response.sprites.front_default+'"></td>';
                    html_str += '</tr>';
                    console.log(html_str);
                    $('tbody').append(html_str);
                    $('#pokemon_id').val('');

            },
            dataType: 'json'
        })
    })
})