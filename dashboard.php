<?php 
	include_once('templates/header.php');

	$page_name = "home";
    $merchantid = $_SESSION['merchantid'];
    $today = date('Ymd');
    $query = $conn->prepare("SELECT * FROM summarylist WHERE merchantid= ? AND summarydate = ?");
    $query->bind_param("ss", $merchantid, $today);
    $query->execute();
    $result = $query->get_result();
    if($result->num_rows > 0) {
        $data = $result->fetch_assoc();
        $total = $data['summarytotalamount'];
        $balance = $data['summarytotalsuccessamt'];
    } else {
        $total = 0;
        $balance = 0;
    }
?>

<section class="content">
    <div class="container-fluid">
        <div class="block-header">
            <h2>DASHBOARD</h2>
        </div>
        <div class="row clearfix">
        	<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="info-box bg-cyan hover-expand-effect">
                    <div class="icon">
                        <i class="material-icons">help</i>
                    </div>
                    <div class="content">
                        <div class="text">Total</div>
                        <div class="number count-to" data-from="0" data-to="<?= $total?>" data-speed="1000" data-fresh-interval="20"></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="info-box bg-light-green hover-expand-effect">
                    <div class="icon">
                        <i class="material-icons">forum</i>
                    </div>
                    <div class="content">
                        <div class="text">Balance</div>
                        <div class="number count-to" data-from="0" data-to="<?= $balance?>" data-speed="1000" data-fresh-interval="20"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php include_once('templates/menu.php'); ?>
<?php include_once('templates/footer.php');?>