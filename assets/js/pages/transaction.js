var endDate = moment().startOf('day');
var startDate = moment().startOf('day').subtract(1, 'month');
$(function () {
    //Exportable table
    var table = $('.js-exportable').DataTable({
        dom: 'Bfrtip',
        responsive: true,
        buttons: [
            {
                extend: 'excel',
                title: 'Excel',
                filename: function(){
                    var currentDate = new Date();
                    var day = currentDate.getDate();
                    if(day < 10) day = '0' + day;
                    var month = currentDate.getMonth() + 1;
                    if(month < 10) month = '0' + month;
                    var year = currentDate.getFullYear();
                    var d = year + month + day;
                    return 'Transaction ' + d + Math.floor(Math.random() * 1000000);
                },
            }
        ],
        "order": [[ 6, "desc" ]],
        "pageLength": 20
    });

    $(".filter-status").change(function(e){
        table.column(5).search(e.target.value).draw();
    });
    $(".filter-orderid").keyup(function(e){
        table.column(0).search($(this).val()).draw();
    });
    $(".filter-bank").keyup(function(e){
        table.column(3).search($(this).val()).draw();
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

    $(".js-exportable").on("click",".change_status", function(){
        $("input[name='orderid']").val($(this).attr('orderid'));
    });
    $('.change_btn').click(function(e) {
        $.ajax({
            type: "POST",
            url: './transaction.php',
            data: {orderid: $("input[name='orderid']").val(), change_status: 'change_status'},
            success: function(result) {
                $($(".status[orderid='"+$("input[name='orderid']").val()+"']")).html('Success');
                $($("button[orderid='"+$("input[name='orderid']").val()+"']").parent().parent()).html("");
                $("#statusModal").modal('hide');
            }
        });
    })
});

$.fn.dataTable.ext.search.push(
    function( settings, data, dataIndex ) {
        var start_dt = startDate.format('YYYY-MM-DD HH:mm:ss');
        var end_dt = endDate.format('YYYY-MM-DD HH:mm:ss');
        if(start_dt <= data[6] && end_dt >= data[6]) return true;
        return false;
    }
);