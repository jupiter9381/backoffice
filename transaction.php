<?php 
	include_once('templates/header.php');

	$sql = "SELECT * FROM orders";
	$result = $conn->query($sql);
?>

<?php include_once('templates/menu.php'); ?>

<section class="content">
	<div class="container-fluid">
		<div class="block-header">
            <h2>Transaction</h2>
        </div>
        <div class="row clearfix">
        	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        		<div class="card">
        			<div class="header">
        				<h2>Transaction</h2>
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
        					<table class="table table-bordered table-striped table-hover js-exportable dataTable">
        						<thead>
        							<tr>
        								<th>Merchant Order ID</th>
        								<th>Merchant Name</th>
        								<th>Amount</th>
        								<th>Bank Account</th>
        								<th>User IP</th>
        								<th>Status</th>
        								<th>Created Date Time</th>
        								<!-- <th></th> -->
        							</tr>
        						</thead>
        						<tbody>
        							<?php while($row = mysqli_fetch_assoc($result)) {?>
        							<tr>
        								<td><?= $row['merchantorderid'];?></td>
        								<td><?= $row['merchantid'];?></td>
        								<td><?= $row['orderamount'];?></td>
        								<td><?= $row['bankaccount'];?></td>
        								<td><?= $row['userip'];?></td>
        								<td><?= $row['orderstatus'];?></td>
        								<td><?= $row['createddatetime'];?></td>
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