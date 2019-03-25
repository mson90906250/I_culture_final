<?php 
	require_once $_SERVER['DOCUMENT_ROOT']."/I_culture_website/core/init.php";
	include BASEURL."/admin/include/head.php";
	include BASEURL."/admin/include/navigation.php";

	//將店家從列表中移除
	if(isset($_GET['delete'])){
		$delete_id = sanitize((int)$_GET['delete']);
		$db->query("UPDATE shop SET Deleted = 1 WHERE Shop_ID = '{$delete_id}'");
		header("Location: shop.php");
	}

	//刪除圖片
	if(isset($_GET['delete_img'])){
		$delete_img_id = $_GET['delete_img'];
		$delete_img_URL = $_SERVER['DOCUMENT_ROOT'].$_GET['delete_img_URL'];
		unlink($delete_img_URL);
		$db->query("UPDATE shop SET URL = '' WHERE Shop_ID = '{$delete_img_id}' ");
		header("Location: shop.php?edit=".$delete_img_id);

	}
	
	//如果($_GET['edit']有被設定,則將值賦予$edit_id
	if(isset($_GET['edit'])||isset($_GET['add'])){
		if(isset($_GET['edit'])){ 
			$edit_id = $_GET['edit'];
			$shopQ = $db->query("SELECT * FROM shop WHERE Shop_ID = '{$edit_id}'");
			$preshop_info = mysqli_fetch_assoc($shopQ);

		}	

	}else{
		//列出所有店家
		$shopQ = $db->query("SELECT * FROM shop WHERE Deleted = 0");
	}

	

	//新增or編輯
	if($_POST){
		if(isset($_GET['add'])||isset($_GET['edit'])){
			

			//確認所有欄位都有被填寫
			$input_nameArr = array('name'=>'店名','intro'=>'店家介紹','tel'=>'電話','addr'=>'地址');
			$errors = array();
			foreach($input_nameArr as $key => $input_name){
				//如果該欄位為""
				if(!isset($_POST[$key])||empty($_POST[$key])){
					$errors[] = $input_name." 欄位需填寫";
				}else{
					$$key = sanitize($_POST[$key]);
				}
			}
			$shop_type = sanitize($_POST['shop_type']);

			//圖片處理
			if($_FILES['photo']['size'] > 0){
				if($_FILES['photo']['size']>8000000){
					$errors[] = "圖片不得超過8MB";
				}else{
					//圖片種類(png or jpg ....)
					$arr = explode("/", $_FILES['photo']['type']);
					$photo_type = $arr[1];
					//圖片來源
					$photo_from = $_FILES['photo']['tmp_name'];
					//上傳的檔名
					$upload_name = md5(microtime()).".".$photo_type;
					//上傳圖片路徑
					$dbpath =  BASEURL."/images/shop/".$upload_name;
					$relative_path = "/I_culture_website/images/shop/".$upload_name;
				}	
			}else{
				$errors[] = "請選擇一張圖片";
			}


			//判斷有無錯誤產生
			if(!empty($errors)){
				//顯示錯誤訊息
				showErrors($errors);
			}else{
				//編輯
				if(isset($_GET['edit'])){
					$db->query("UPDATE shop SET Name = '{$name}',Addr = '{$addr}',Tel = '{$tel}',
						URL = '{$relative_path}',Introduce = '{$intro}',Kind = '{$shop_type}' WHERE Shop_ID = '{$edit_id}'");
				}elseif(isset($_GET['add'])){
					//新增
					$db->query("INSERT INTO shop(Name,Addr,Tel,URL,Introduce,Kind) VALUES ('{$name}','{$addr}','{$tel}','{$relative_path}','{$intro}','{$shop_type}') ");
				}

				move_uploaded_file($photo_from, $dbpath);
				header("Location:shop.php");
			}

		}
	}

 ?>
 <?php if(isset($_GET['edit'])||isset($_GET['add'])): 
 	
 ?>
 	<!-- 詳細資訊 -->
	<form action="shop.php?<?php echo (isset($_GET['edit']))?'edit='.$edit_id:'add=1'; ?>" method="post" enctype="multipart/form-data">
		<div class="container">
			<h1 class="text-center"><?php echo (isset($_GET['edit']))?'修改店家':'新增店家'; ?></h1>
			<div class="row">
				<div class="col-md-4">
					<label for="name">店名</label>
					<input class="form-control" type="text" name="name" id="name" value="<?php echo (isset($_GET['edit']))?$preshop_info['Name']:''; ?>">
				</div>
				<div class="col-md-4">
					<label for="intro">店家介紹</label>
					<input class="form-control" type="text" name="intro" id="intro" value="<?php echo (isset($_GET['edit']))?$preshop_info['Introduce']:''; ?>">
				</div>
				<div class="col-md-4">
					<label for="tel">電話</label>
					<input class="form-control" type="text" name="tel" id="tel" value="<?php echo (isset($_GET['edit']))?$preshop_info['Tel']:''; ?>">
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<label for="addr">地址</label>
					<input class="form-control" type="text" name="addr" id="addr" value="<?php echo (isset($_GET['edit']))?$preshop_info['Addr']:''; ?>">
				</div>
				<div class="col-md-4">				
					<label for="shop_type">店家種類</label>
					<select class="form-control" name="shop_type" id="shop_type">
						<option value="f" <?php echo (isset($_GET['shop_type'])&&$preshop_info['Kind']=='f')?' selected':''; ?>>美食類</option>
						<option value="c" <?php echo (isset($_GET['shop_type'])&&$preshop_info['Kind']=='c')?' selected':''; ?>>文創類</option>
					</select>					
				</div>
				<?php if(!isset($preshop_info)||$preshop_info['URL']==""): ?>
					<div class="col-md-4">
						<label for="photo">店家圖片 (僅接受png,jpg,jpeg,gif 8MB以下的圖片)</label>
						<input type="file" name="photo" id="photo" class="form-control" accept=".png,.jpg,.jpeg,.gif" >
					</div>
				<?php else: ?>
					<div class="col-md-4 mt10">
						<div class="text-center" style="width: 100%;">
							<img src="<?php echo $preshop_info['URL']; ?>" alt="" class="img-responsive">
							<a href="shop.php?delete_img=<?php echo $edit_id ?>&delete_img_URL=<?php echo $preshop_info['URL']; ?>"  class="btn btn-danger mt10">刪除圖片</a>
						</div>

					</div>
				<?php endif; ?>
			</div>
			<div class="row mt10">
				<a href="shop.php" class="btn btn-warning">取消</a>
				<input class="btn btn-primary" type="submit" value="新增/修改">
			</div>
		</div>
	</form>	

 <?php else: ?>
	<!-- Shop list -->
	<div class="container">
		<a href="shop.php?add=1" class="btn btn-success pull-right">新增店家</a>
		<div class="clearfix"></div>
	 	<table class="table table-bordered table-condensed table-striped mt10">
	 		<thead>
	 			<th></th>
	 			<th>店名</th>
	 			<th>店家介紹</th>
	 		</thead>
	 		<?php while($shop = mysqli_fetch_assoc($shopQ)): ?>
		 		<tbody>
		 			<tr>
		 				<td>
		 					<a href="shop.php?edit=<?php echo $shop['Shop_ID'] ?>"><span class="glyphicon glyphicon-pencil"></span></a>
		 					<a href="shop.php?delete=<?php echo $shop['Shop_ID'] ?>" onclick="return confirm('確定要刪除嗎?')"><span class="glyphicon glyphicon-remove-sign"></span></a>
		 				</td>
		 				<td><?php echo $shop['Name'] ?></td>
		 				<td><?php echo $shop['Introduce'] ?></td>
		 			</tr>
		 		</tbody>
	 		<?php endwhile; ?>
	 	</table>		
	</div>

 <?php endif; ?>	
	

 <?php 
 	include BASEURL."/admin/include/footer.php";

  ?>
