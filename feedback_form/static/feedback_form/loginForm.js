 require('jquery.min.js')

    $(document).ready(function(){
          // Applyiing client side validation to fields.
          $('#id_programme').('required', 'required')

          $('#id_programme').change(function(){
            $('#id_section').parent().addClass('remove');
            $('.remove').parent().addClass('hatYar');
            c_id = $(this).val();
            if( c_id == "MTECH")
	             $('.hatYar').css('display', 'none');
	          else
	             $('.hatYar').css('display', 'block'); 
             if( c_id == "MTECH")
                $()

           request_url = 'login/get_batch/' + c_id + '/';
            $.ajax({
                url: request_url,
                success: function(data){
                data = $.parseJSON(data);
                //console.log(data);
                $('#id_batch').html('<option selected="' + "selected" + '">' + '' +'</option>');
                $('#id_semester').html('<option selected="' + "selected" + '">' + '' +'</option>');
                //console.log(data);
                $.each(data[0], function(key, value){
                    //console.log(typeof(key), typeof(value));
                    $('#id_batch').append('<option value="' + key + '">' + value +'</option>');
                }); 
                /*$.each(data[1], function(key, value){
                    $('#id_semester').append('<option value="' + key + '">' + value +'</option>');
                }); */
                //console.log(typeof(data[1]));
                for(var i = 1; i<=data[1]; i++)
                    //console.log(typeof(i))
                    $('#id_semester').append('<option value="' + parseInt(i) + '">' + parseInt(i) +'</option>');
            }, 
            errors: function(e) {
                alert(e);
            }
        })

    })
}); 
