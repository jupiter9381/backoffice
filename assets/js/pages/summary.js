$(function () {
	var table = $('.table_summary').DataTable({
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
                    return 'Summary ' + d + Math.floor(Math.random() * 1000000);
                },
            }
        ],
        "order": [[ 5, "desc" ]],
        "pageLength": 20
    });

});