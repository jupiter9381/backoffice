<?php 
	include("config/db.php");
	if(isset($_POST['method']) && $_POST['method'] == "add_user") {
		$username = $_POST['username'];
		$query = $conn->prepare("SELECT * FROM users WHERE username= ?");
        $query->bind_param("s", $username);
        $query->execute();
        $result = $query->get_result();
        if($result->num_rows > 0) {
            $user = $result->fetch_assoc();
            echo json_encode(array('status' => false, 'msg' => 'Username is already existing.'));
        } else {
            echo json_encode(array('status' => true, 'msg' => 'Username is unique'));
        }
        exit;
	}
	if(isset($_POST['method']) && $_POST['method'] == "add_merchant") {
		$merchantname = $_POST['merchantname'];
		$query = $conn->prepare("SELECT * FROM merchants WHERE name= ?");
        $query->bind_param("s", $merchantname);
        $query->execute();
        $result = $query->get_result();
        if($result->num_rows > 0) {
            $user = $result->fetch_assoc();
            echo json_encode(array('status' => false, 'msg' => 'Merchant name is already existing.'));
        } else {
            echo json_encode(array('status' => true, 'msg' => 'Merchant name is unique'));
        }
        exit;
	}
?>