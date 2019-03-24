<?php 
	require_once $_SERVER['DOCUMENT_ROOT']."/I_culture_website/core/init.php";
	include BASEURL."/admin/include/head.php";
	include BASEURL."/admin/include/navigation.php";
	if(!isLoggedIn()){
		//登入失敗時執行
		//loginErrorRedirect();
		header("Location: login.php");
	}
 ?>

 <div class="container">
 	<canvas id="myChart"></canvas>
 </div>

 <?php 
 	include BASEURL."/admin/include/footer.php";

  ?>