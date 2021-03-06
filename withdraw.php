<?php 
	include_once('templates/header.php');

	$page_name = 'withdraw';

    $merchantid = $_SESSION['merchantid'];
    if($merchantid == null) $merchantid = "";

    $query = $conn->prepare("SELECT * FROM payouttransaction where merchantid like ?");
    $param = '%'.$merchantid.'%';
    $query->bind_param("s", $param);
    $query->execute();
    $result = $query->get_result();

    if(isset($_POST['add_withdraw'])) {
        $orderid = $_POST['orderid'];
        $amount = $_POST['amount'];
        $bankname = $_POST['bankname'];
        $bankaccountno = $_POST['bankaccountno'];
        $bankaccountname = $_POST['bankaccountname'];
        $status = $_POST['status'];
        $datetime = date('Y-m-d H:i:s');

        $query = $conn->prepare("INSERT INTO payouttransaction(merchantid, merchantpayoutid, payoutamount, payoutstatus, bankname, accountholdername, accountno, createddatetime, updateddatetime) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
        $query->bind_param("sssssssss", $merchantid, $orderid,$amount, $status, $bankname, $bankaccountname, $bankaccountno, $datetime, $datetime);
        $query->execute();
        $query->close();
        header('Location: '.SITE_URL.'withdraw.php');
    }
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
        							<?php while($row = $result->fetch_assoc()) {?>
        							<tr>
        								<td><?= $row['merchantpayoutid'];?></td>
        								<td><?= number_format($row['payoutamount'], 2);?></td>
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
<div class="modal fade" id="withdrawModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="defaultModalLabel">Withdraw Form</h4>
            </div>
            <form method='POST'>
                <div class="modal-body">
                    <div class="row clearfix">
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="text" class="form-control" placeholder="Order Id" name="orderid" required>
                                </div>  
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="number" class="form-control" placeholder="Withdraw amount" name="amount" step="0.01" required>
                                </div>  
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="text" class="form-control" placeholder="Bank name" name="bankname" required>
                                </div>  
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="text" class="form-control" placeholder="Bank account number" name="bankaccountno" required>
                                </div>  
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="text" class="form-control" placeholder="Bank account name" name="bankaccountname" required>
                                </div>  
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="form-line">
                                    <select class="form-control show-tick" name="status" required>
                                        <option value="" disabled selected>Select status</option>
                                        <option>Success</option>
                                        <option>Pending</option>
                                    </select>
                                </div>  
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-link waves-effect" name="add_withdraw">SAVE CHANGES</button>
                    <button type="button" class="btn btn-link waves-effect" data-dismiss="modal">CLOSE</button>
                </div>
            </form>
        </div>
    </div>
</div>
<?php include_once('templates/footer.php');?>