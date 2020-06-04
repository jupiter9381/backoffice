<?php 
	include_once('templates/header.php');
	$page_name = "user";

	if($_SESSION['usertype'] != 'superadmin') {
		header('Location: '.SITE_URL.'dashboard.php');
	}
	
	$sql = "SELECT * FROM users LEFT JOIN merchants ON users.merchantid = merchants.id WHERE usertype != 'superadmin'";
	$result = $conn->query($sql);

	if(isset($_POST['merchant'])) {
		$merchant = $_POST['merchant'];
		$usertype = $_POST['usertype'];
		$username = $_POST['username'];
		$password = md5($_POST['password']);
		$datetime = date('Y-m-d H:i:s');
		$query = $conn->prepare("INSERT INTO users(username, userpassword, usertype, merchantid, created_date) VALUES (?, ?, ?, ?, ?)");
		$query->bind_param("sssss", $username, $password, $usertype, $merchant, $datetime);
		$query->execute();
		$query->close();
		header('Location: '.SITE_URL.'user.php');
	}
?>

<?php include_once('templates/menu.php'); ?>

<section class="content">
	<div class="container-fluid">
		<div class="block-header">
            <h2>User</h2>
        </div>
        <div class="row clearfix">
        	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        		<div class="card">
        			<div class="header">
        				<h2>User List</h2>
        			</div>
        			<div class="body">
        				<div class="table-responsive">
        					<table class="table table-bordered table-striped table-hover table_user dataTable">
        						<thead>
        							<tr>
        								<th>User Name</th>
        								<th>Type</th>
        								<th>Merchant</th>
        								<!-- <th></th> -->
        							</tr>
        						</thead>
        						<tbody>
        							<?php while($row = mysqli_fetch_assoc($result)) {?>
        							<tr>
        								<td><?= $row['username'];?></td>
        								<td><?= $row['usertype'];?></td>
        								<td><?= $row['name'];?></td>
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
<div class="modal fade" id="userModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="defaultModalLabel">User Form</h4>
            </div>
            <form method='POST' id="userup">
	            <div class="modal-body">
	                <div class="row clearfix">
	                	<div class="col-md-12">
	                		<div class="form-group">
	                			<div class="form-line">
	                				<select class="form-control show-tick" name="merchant" required>
		                                <option value="" disabled selected>Select Merchant</option>
		                                <?php 
		                                    $sql = "SELECT * FROM merchants ORDER BY name";
		                                    $result = $conn->query($sql);
		                                    while($row = mysqli_fetch_assoc($result)) {
		                                ?>
		                                <option value="<?= $row['id'];?>"><?= $row['name']?></option>
		                                <?php
		                                    }
		                                ?>
		                            </select>
	                			</div>	
	                		</div>
	                	</div>
	                	<div class="col-md-12">
	                		<div class="form-group">
	                			<div class="form-line">
	                				<select class="form-control show-tick" name="usertype" required>
		                                <option value="" disabled selected>Select type</option>
		                                <option value="admin">Admin</option>
		                                <option value="user">User</option>
		                            </select>
	                			</div>	
	                		</div>
	                	</div>
	                	<div class="col-md-12">
	                		<div class="form-group">
	                			<div class="form-line">
	                				<input type="text" class="form-control" placeholder="Username" name="username" required>
	                			</div>
	                			<label class="error d-none"></label>
	                		</div>
	                	</div>
	                	<div class="col-md-12">
	                		<div class="form-group">
	                			<div class="form-line">
	                				<input type="password" class="form-control" placeholder="Password" name="password" required>
	                			</div>	
	                		</div>
	                	</div>
	                	<div class="col-md-12">
	                		<div class="form-group">
	                			<div class="form-line">
	                				<input type="password" class="form-control" placeholder="Confirm password" name="confirm" required>
	                			</div>	
	                		</div>
	                	</div>
	                </div>
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-link waves-effect add_user" name="add_user">ADD USER</button>
	                <button type="button" class="btn btn-link waves-effect" data-dismiss="modal">CLOSE</button>
	            </div>
        	</form>
        </div>
    </div>
</div>
<?php include_once('templates/footer.php');?>