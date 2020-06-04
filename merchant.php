<?php 
	include_once('templates/header.php');
	$page_name = "merchant";

	if($_SESSION['usertype'] != 'superadmin') {
		header('Location: '.SITE_URL.'dashboard.php');
	}
	$sql = "SELECT * FROM merchants";
	$result = $conn->query($sql);

	if(isset($_POST['merchantname'])) {
		$merchantname = $_POST['merchantname'];
		$charges_fee = $_POST['charge_fee'];
		$merchantemail = $_POST['merchantemail'];
		$datetime = date('Y-m-d H:i:s');
		$query = $conn->prepare("INSERT INTO merchants(name, created_date, email, charges_fee) VALUES(?, ?, ?, ?)");
		$query->bind_param("ssss", $merchantname, $datetime, $merchantemail, $charges_fee);
		$query->execute();
		$query->close();
		header('Location: '.SITE_URL.'merchant.php');
	}
?>

<?php include_once('templates/menu.php'); ?>

<section class="content">
	<div class="container-fluid">
		<div class="block-header">
            <h2>Merchant</h2>
        </div>
        <div class="row clearfix">
        	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        		<div class="card">
        			<div class="header">
        				<h2>Merchant List</h2>
        			</div>
        			<div class="body">
        				<div class="table-responsive">
        					<table class="table table-bordered table-striped table-hover table_merchant dataTable">
        						<thead>
        							<tr>
        								<th>Merchant Name</th>
        								<th>Charges Fee</th>
        								<th>Email</th>
        								<!-- <th></th> -->
        							</tr>
        						</thead>
        						<tbody>
        							<?php while($row = mysqli_fetch_assoc($result)) {?>
        							<tr>
        								<td><?= $row['name'];?></td>
        								<td><?= number_format($row['charges_fee'], 2);?></td>
        								<td><?= $row['email'];?></td>
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
<div class="modal fade" id="merchantModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="defaultModalLabel">Merchant Form</h4>
            </div>
            <form method='POST' id="merchantup">
	            <div class="modal-body">
	                <div class="row clearfix">
	                	<div class="col-md-12">
	                		<div class="form-group">
	                			<div class="form-line">
	                				<input type="text" class="form-control" placeholder="Merchant Name" name="merchantname">
	                			</div>	
	                			<label class="error d-none"></label>
	                		</div>
	                	</div>
	                	<div class="col-md-12">
	                		<div class="form-group">
	                			<div class="form-line">
	                				<input type="number" class="form-control" placeholder="Charges Fee" name="charge_fee" step="0.01">
	                			</div>	
	                		</div>
	                	</div>
	                	<div class="col-md-12">
	                		<div class="form-group">
	                			<div class="form-line">
	                				<input type="email" class="form-control" placeholder="Merchant Email" name="merchantemail">
	                			</div>	
	                		</div>
	                	</div>
	                </div>
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-link waves-effect add_merchant" name="add_merchant">ADD MERCHANT</button>
	                <button type="button" class="btn btn-link waves-effect" data-dismiss="modal">CLOSE</button>
	            </div>
        	</form>
        </div>
    </div>
</div>
<?php include_once('templates/footer.php');?>