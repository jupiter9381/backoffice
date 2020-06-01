<?php 
	include_once('templates/header.php');
    $page_name = "profile";

    $userid = $_SESSION['userid'];

    if(isset($_POST['update_profile'])) {
        $userid = $_POST['userid'];
        $password = md5($_POST['password']);
        $query = $conn->prepare("UPDATE users SET userpassword = ? WHERE id = ?");
        $query->bind_param("ss", $password, $userid);
        $query->execute();
        $query->close();
        header('Location: '.SITE_URL.'dashboard.php');
    }
?>

<?php include_once('templates/menu.php'); ?>

<section class="content">
	<div class="container-fluid">
		<div class="block-header">
            <h2>Profile</h2>
        </div>
        <div class="row clearfix">
        	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        		<div class="card">
        			<div class="header">
        				<h2>Profile</h2>
        			</div>
        			<div class="body">
                        <form method="POST" id="profile">
                            <input type="hidden" name="userid" value="<?= $userid?>">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">lock</i>
                                        </span>
                                        <div class="form-line">
                                            <input class="form-control" placeholder="Password" name="password" required type="password" minlength="6">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="material-icons">lock</i>
                                        </span>
                                        <div class="form-line">
                                            <input class="form-control" placeholder="Confirm Password" name="confirm" required type="password" minlength="6">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <button type="submit" class="btn bg-red waves-effect" name="update_profile">Update</button>
                                </div>
                            </div>
                        </form>
                        
        			</div>
        		</div>
        	</div>
        </div>
	</div>
</section>
<?php include_once('templates/footer.php');?>