$(function () {
	var table = $('.table_user').DataTable({
		dom: 'Bfrtip',
        responsive: true,
        buttons: [
        	{
        		text: 'Add User',
                action: function ( e, dt, node, config ) {
                    $("#userModal").modal('show');
                }
        	}
        ],
        "pageLength": 20
    });

    $('#userup').validate({
        rules: {
            'terms': {
                required: true
            },
            'confirm': {
                equalTo: '[name="password"]'
            }
        },
        highlight: function (input) {
            console.log(input);
            $(input).parents('.form-line').addClass('error');
        },
        unhighlight: function (input) {
            $(input).parents('.form-line').removeClass('error');
        },
        errorPlacement: function (error, element) {
            $(element).parents('.input-group').append(error);
            $(element).parents('.form-group').append(error);
        }
    });

    $('.add_user').click(function(e) {
        $.ajax({
            type: "POST",
            url: './functions.php',
            data: {username: $("input[name='username']").val(), method: 'add_user'},
            dataType: 'json',
            success: function(result) {
                if(result['status'] == false) {
                    $(".error").html(result['msg']);
                    $(".error").removeClass('d-none');
                } else {
                    $("#userup").submit();
                }
            }
        });
    })
});