var endDate = moment().startOf('day');
var startDate = moment().startOf('day').subtract(1, 'month');
$(function () {
	var table = $('.table_withdraw').DataTable({
        columnDefs: [
            { type: 'chinese-string', targets: 4 }
        ],
		dom: 'Bfrtip',
        responsive: true,
        buttons: [
            'csv', 'excel', 'pdf',
            {
                text: 'Add Withdraw',
                action: function ( e, dt, node, config ) {
                    $("#withdrawModal").modal('show');
                }
            }
        ],
        "pageLength": 20
    });

	$(".filter-status").change(function(e){
        table.column(5).search(e.target.value).draw();
    });
    $(".filter-orderid").keyup(function(e){
        table.column(0).search($(this).val()).draw();
    });
    $(".filter-bank").keyup(function(e){
        table.column(4).search($(this).val()).draw();
    });

    $('input[name="daterange"]').daterangepicker({
        timePicker: true,
        opens: 'left',
        endDate: moment().startOf('day'),
        startDate: moment().startOf('day').subtract(1, 'month'),
    }, function(start, end){
        startDate = start;
        endDate = end;
        table.draw();
    });
});

$.fn.dataTable.ext.search.push(
    function( settings, data, dataIndex ) {
        var start_dt = startDate.format('YYYY-MM-DD HH:mm:ss');
        var end_dt = endDate.format('YYYY-MM-DD HH:mm:ss');
        if(start_dt <= data[6] && end_dt >= data[6]) return true;
        return false;
    }
);