<?php 
	require_once $_SERVER['DOCUMENT_ROOT']."/I_culture_website/config.php";
	require_once BASEURL."/helper/helper.php";
	
	$db = mysqli_connect("localhost","id8483798_admin","123456","id8483798_i_culture");
	$db->query("SET NAMES UTF8");

	session_start();

	if(isset($_SESSION['SBUser'])){
		$user_id = $_SESSION['SBUser'];
		$query = $db->query("SELECT * FROM admin WHERE id = '$user_id'");
		$user_data = mysqli_fetch_assoc($query);
		// $fullName = explode(" ", $user_data['full_name']);
		// $user_data['first_name'] = $fullName[0];
		// $user_data['last_name'] = $fullName[1];

	}

	if(isset($_SESSION['success_flash'])){
		echo "<div id='success_flash' class='bg-success'><p class='text-success text-center'>".$_SESSION['success_flash']."</p></div>";
		unset($_SESSION['success_flash']);
	}

	if(isset($_SESSION['error_flash'])){
		echo "<div id='error_flash' class='bg-danger'><p class='text-danger  text-center'>".$_SESSION['error_flash']."</p></div>";
		unset($_SESSION['error_flash']);
	}

 ?>