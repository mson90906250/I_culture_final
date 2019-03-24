<?php 
	require_once "core/init.php";
	include "include/head.php";
	include "include/navigation.php";

	//根據shop_type來抓取店家資料
	$shop_type = $_GET['shop_type'];
	$shopQ = $db->query("SELECT * FROM shop WHERE Kind = '{$shop_type}'");

 ?>

	<!-- 新增時間軸 -->
<div class="timeline-section">
	<h1 class="shop_title">∣ 店家介紹<small>Shop</small></h1>	
	<?php
		$cnt = 0;//用於記錄迴圈次數 
		//動態生成店家介紹
		while($shop = mysqli_fetch_assoc($shopQ)): 
			$cnt++;
		?>
		<div class="container">
			
			<div class="row timeline-pointer-section">
				<div class="<?php echo ($cnt%2 == 0)?'col-md-6 text-center':'col-md-6 col-md-push-6 text-center'; ?>">
					<div class="shop_text">
					<h2 class="shop_title"><?php echo $shop['Name']; ?></h2>
					<ul class="shop_list">
						<li>營業時間：12：00～18：00</li>
						<li>電話：<?php echo $shop['Tel']; ?></li>
						<li>地址：<?php echo $shop['Addr']; ?></li>
					</ul>
					<a href="i_culture_shop01.html" class="btn btn-primary">瞭解更多</a>	
					</div>
				</div>
				<div class="col-md-6 <?php echo ($cnt%2 == 0)?'':'col-md-pull-6'; ?>">
					<div class="shop_image">
						<img src="<?php echo $shop['URL']; ?>" alt="" class="img-responsive">
					</div>
				</div>
			</div>
		</div>
	<?php endwhile; ?>


<!-- 	<div class="container">
		<div class="row timeline-pointer-section">
			<div class="col-md-6 col-md-push-6 text-center">
				<div class="shop_text">
				<h2 class="shop_title">森林島嶼</h2>
				<ul class="shop_list">
					<li>營業時間：11：00～20：00</li>
					<li>電話：04-23012715</li>
					<li>地址：台中市西區民生路360號</li>
				</ul>
				<a href="i_culture_shop02.html" class="btn btn-primary">瞭解更多</a>	
				</div>
			</div>
			<div class="col-md-6 col-md-pull-6">
				<div class="shop_image">
					<img src="images/i03.jpg" alt="" class="img-responsive">
				</div>
			</div>
		</div>
	</div>
	
		<div class="container">
		<div class="row timeline-pointer-section">
			<div class="col-md-6 text-center">
				<div class="shop_text">
				<h2 class="shop_title">旅禾-泡芙之家</h2>
				<ul class="shop_list">
					<li>營業時間：11：00～20：00</li>
					<li>電話：04-23011911</li>
					<li>地址：台中市西區民生路358號</li>
				</ul>
				<a href="i_culture_shop03.html" class="btn btn-primary">瞭解更多</a>	
				</div>
			</div>
			<div class="col-md-6">
				<div class="shop_image">
					<img src="images/i04.jpg" alt="" class="img-responsive">
				</div>
			</div>
		</div>
	</div>	
	
	<div class="container">
		<div class="row timeline-pointer-section">
			<div class="col-md-6 col-md-push-6 text-center">
				<div class="shop_text">
				<h2 class="shop_title">森小姐的茶店</h2>
				<ul class="shop_list">
					<li>營業時間：11：00～19：00</li>
					<li>電話：04-23012715</li>
					<li>地址：台中市西區民生路368巷2弄11號</li>
				</ul>
				<a href="i_culture_shop04.html" class="btn btn-primary">瞭解更多</a>	
				</div>
			</div>
			<div class="col-md-6 col-md-pull-6">
				<div class="shop_image">
					<img src="images/i05.jpg" alt="" class="img-responsive">
				</div>
			</div>
		</div>
	</div> -->	
</div>	<!-- timeline-section end -->



 <?php 
 	include "include/footer.php";
  ?>