$(document).ready(function(){
    $('form').submit(function(event){
        event.preventDefault();

        $.ajax({
            method: 'post',
            data: $(this).serialize(),
            url: '/posts',
            success: function(response){
                console.log(response);
                $('#all_posts').append(response);
            },
            dataType: 'html'
        });
    })
    $('button').click(function(){
        var which_button = $(this);
        $.ajax({
            method: 'delete',
            url: '/posts/'+$(this).attr('data-post-id'),
            success: function(response){
                // as soon as we jump into this function, we lose scope of the original button click function
                // therefore, I needed to save a reference which_button to hang onto it.
                // what scope are we in inside this success function? the WINDOW scope, as in, the browser WINDOW.

                if (response.status){
                    $(which_button).parent().remove();
                    alert(response.message);
                }
            },
            dataType: 'json'
        })

    })

})