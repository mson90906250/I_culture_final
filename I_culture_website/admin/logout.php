<?php 
	require_once $_SERVER['DOCUMENT_ROOT']."/I_culture_website/core/init.php";
	unset($_SESSION['SBUser']);
	header("Location: login.php");
 ?>