$(document).ready(function(){

    $('form').submit(function(event){
        event.preventDefault();
        var city = $('#city').val();
        $.ajax({
            method: 'get',
            url: 'http://api.openweathermap.org/data/2.5/weather?q='+city+'&units=imperial&appid=6e66c5cd70846fd210b493c10d876730',
            success: function(response){
                var html_str = '';
                html_str += '<h1>'+response.name+'</h1>';
                html_str += '<p>Temperature: '+response.main.temp+'</p>';
                $('div').html(html_str);
                $('#city').val('');
            },
            dataType: 'json'
        });
        
    });


})