<?php 
	include("config/base.php");
	session_start();
	session_destroy();

	header('Location: '.SITE_URL.'signin.php');
?>