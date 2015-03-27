 // Function to avoid back page functionality of the browser.
      function noBack()
         {
             window.history.forward()
         }
        noBack();
        window.onload = noBack;
        window.onpageshow = function(evt) { if (evt.persisted) noBack() }
        window.onunload = function() { void (0) }


    $(document).ready(function(){

          $('#id_programme').change(function(){
            c_id =$(this).val();

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
                
                for(var i = 1; i<=data[1]; i++)
                    //console.log(typeof(i))
                    $('#id_semester').append('<option value="' + parseInt(i) + '">' + parseInt(i) +'</option>');
            }, 
            errors: function(e) {
                alert(e);
            }
        })

    });

      $('#id_batch').change(function(){  
        current_batch = $(this).val();
        console.log(current_batch);

        request_url = 'login/get_section/' + current_batch + '/';
        $.ajax({
                url: request_url,
                success: function(data){
                data = $.parseJSON(data);
                console.log(data);
                if (data.length != 0)
                {
                  $('#id_toggle_section').css('display', 'block');
                  $('#id_section').html('<option selected="' + "selected" + '">' + '' +'</option>');
                 
                  for(var i=0; i<data.length; i++)
                  {
                    console.log(data[i]);
                    $('#id_section').append('<option value="' + data[i] + '">' + data[i] +'</option>');
                  }

                  }
                  else
                    $('#id_toggle_section').css('display', 'none');
                }
              })
        });
     // });
}); 
