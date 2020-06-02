$(function () {
	var table = $('.table_merchant').DataTable({
		dom: 'Bfrtip',
        responsive: true,
        buttons: [
        	{
        		text: 'Add Merchant',
                action: function ( e, dt, node, config ) {
                    $("#merchantModal").modal('show');
                }
        	}
        ],
        "pageLength": 20
    });

    $('#withdraw_form').validate({
        rules: {
            'terms': {
                required: true
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
});