<?php 
	include("config/base.php");
	session_destroy();

	header('Location: '.SITE_URL.'signin.php');
?>