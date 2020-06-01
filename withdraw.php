<?php 
	include_once('templates/header.php');

	$page_name = 'withdraw';
	$sql = "SELECT * FROM payouttransaction";
	$result = $conn->query($sql);
?>

<?php include_once('templates/menu.php'); ?>

<section class="content">
	<div class="container-fluid">
		<div class="block-header">
            <h2>Withdraw</h2>
        </div>
        <div class="row clearfix">
        	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        		<div class="card">
        			<div class="header">
        				<h2>Withdraw List</h2>
        			</div>
        			<div class="body">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="material-icons">email</i>
                                    </span>
                                    <div class="form-line">
                                        <input class="form-control filter-orderid" placeholder="Order ID">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="material-icons">email</i>
                                    </span>
                                    <div class="form-line">
                                        <select class="form-control show-tick filter-status">
                                            <option value="" disabled selected>Select Status</option>
                                            <option value="">All</option>
                                            <option>Pending</option>
                                            <option>Success</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="material-icons">email</i>
                                    </span>
                                    <div class="form-line">
                                        <input class="form-control filter-bank" placeholder="Bank account">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <input type="text" name="daterange" value=""  class="form-control filter-date" />
                            </div>
                        </div>
        				<div class="table-responsive">
        					<table class="table table-bordered table-striped table-hover table_withdraw dataTable">
        						<thead>
        							<tr>
        								<th>OrderID</th>
        								<th>Withdrawal Amount</th>
        								<th>Bank Name</th>
        								<th>Bank Account Number</th>
        								<th>Bank Account Name</th>
        								<th>Status</th>
                                        <th>CreatedDateTime</th>
                                        <th>UpdatedDateTime</th>
        							</tr>
        						</thead>
        						<tbody>
        							<?php while($row = mysqli_fetch_assoc($result)) {?>
        							<tr>
        								<td><?= $row['merchantpayoutid'];?></td>
        								<td><?= $row['payoutamount'];?></td>
        								<td><?= $row['bankname'];?></td>
        								<td><?= $row['accountno'];?></td>
        								<td><?= $row['accountholdername'];?></td>
                                        <th><?= $row['payoutstatus'];?></th>
                                        <th><?= $row['createddatetime'];?></th>
                                        <th><?= $row['updateddatetime'];?></th>
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