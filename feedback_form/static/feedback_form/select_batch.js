function get_vehicle_color(){
    new Ajax.Request('/feedback_system/login/', { 
    method: 'post',
    parameters: $H({'type':$('id_course_name').getValue()}),
    onSuccess: function(transport) {
        var e = $('id_batch_id')
        if(transport.responseText)
            e.update(transport.responseText)
    }
    }); // end new Ajax.Request
}
