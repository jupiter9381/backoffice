<?php 
	include_once('templates/header.php');

	$page_name = 'transaction';
    $merchantid = $_SESSION['merchantid'];
    $usertype = $_SESSION['usertype'];
    if($merchantid == null) $merchantid = "";
    $query = $conn->prepare("SELECT * FROM orders where merchantid like ?");
    $param = '%'.$merchantid.'%';
    $query->bind_param("s", $param);
    $query->execute();
    $result = $query->get_result();

    if(isset($_POST['change_status'])) {
        $orderid = $_POST['orderid'];
        $query = $conn->prepare("UPDATE orders SET orderstatus = 'Success' WHERE orderid = ?");
        $query->bind_param("s", $orderid);
        $query->execute();
        $query->close();
        echo 'success';
        exit;
        //header('Location: '.SITE_URL.'transaction.php');
    }
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
                                        <th>Action</th>
        								<!-- <th></th> -->
        							</tr>
        						</thead>
        						<tbody>
        							<?php while($row = $result->fetch_assoc()) {?>
        							<tr>
        								<td><?= $row['merchantorderid'];?></td>
        								<td><?= $row['merchantid'];?></td>
        								<td><?= $row['orderamount'];?></td>
        								<td><?= $row['bankaccount'];?></td>
        								<td><?= $row['userip'];?></td>
        								<td class="status" orderid="<?= $row['orderid'];?>"><?= $row['orderstatus'];?></td>
        								<td><?= $row['createddatetime'];?></td>
                                        <td>
                                            <?php if($row['orderstatus'] == "Pending" && $usertype == 'admin'){?>
                                                <button class="btn btn-primary change_status" orderid="<?= $row['orderid'];?>" data-toggle="modal" data-target="#statusModal">Change</button>
                                            <?php }?>
                                        </td>
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
<div class="modal fade" id="statusModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="statusModalLabel">Confirm</h4>
            </div>
            <form method='POST' id="statusForm">
                <div class="modal-body">
                    <input type="hidden" name="orderid" value="">
                    <h4>Are you sure to change status?</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-link waves-effect change_btn" name="change_status">SAVE CHANGES</button>
                    <button type="button" class="btn btn-link waves-effect" data-dismiss="modal">CLOSE</button>
                </div>
            </form>
        </div>
    </div>
</div>
<?php include_once('templates/footer.php');?>