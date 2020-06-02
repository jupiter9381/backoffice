$(function () {
	var table = $('.table_summary').DataTable({
		dom: 'Bfrtip',
        responsive: true,
        buttons: [
        	'csv', 'excel', 'pdf'
        ],
        "pageLength": 20
    });

});