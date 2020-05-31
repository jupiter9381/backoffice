<?php 
	include_once('templates/header.php');

	$page_name = 'summary';
	$sql = "SELECT * FROM summarylist";
	$result = $conn->query($sql);
?>

<?php include_once('templates/menu.php'); ?>

<section class="content">
	<div class="container-fluid">
		<div class="block-header">
            <h2>Summary</h2>
        </div>
        <div class="row clearfix">
        	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        		<div class="card">
        			<div class="header">
        				<h2>Summary List</h2>
        			</div>
        			<div class="body">
        				<div class="table-responsive">
        					<table class="table table-bordered table-striped table-hover table_summary dataTable">
        						<thead>
        							<tr>
        								<th>Date</th>
        								<th>Total Amount</th>
        								<th>Total Charges</th>
        								<th>Total Transaction Count</th>
        								<th>Total Success Transaction</th>
        								<th>Last update date Time</th>
        							</tr>
        						</thead>
        						<tbody>
        							<?php while($row = mysqli_fetch_assoc($result)) {?>
        							<tr>
        								<td><?= $row['summarydate'];?></td>
        								<td><?= $row['summarytotalamount'];?></td>
        								<td><?= $row['summarytotalafterfee'];?></td>
        								<td><?= $row['summarytrx'];?></td>
        								<td><?= $row['summarysuccesstrx'];?></td>
                                        <th><?= $row['createddatettime'];?></th>
        							</tr>
        							<?php }?>
        						</tbody>
        					</table>
        				</div>
        			</div>
        		</div>
        	</div>
        </div>
	</div>
</section>
<?php include_once('templates/footer.php');?>