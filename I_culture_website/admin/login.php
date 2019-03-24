<?php 
	require_once $_SERVER['DOCUMENT_ROOT']."/I_culture_website/core/init.php";
	include BASEURL."/admin/include/head.php";

	$email = ((isset($_POST['email']))?$_POST['email']:'');
	$email = trim($email);
	$password = ((isset($_POST['password']))?$_POST['password']:'');
	$password = trim($password);

	//password_hash() 函数用于创建密码的散列（hash）
	//PHP 版本要求: PHP 5 >= 5.5.0, PHP 7
	//PASSWORD_DEFAULT - 使用 bcrypt 算法 (PHP 5.5.0 默认)。 注意，该常量会随着 PHP 加入更新更高强度的算法而改变。 
	//所以，使用此常量生成结果的长度将在未来有变化。 因此，数据库里储存结果的列可超过60个字符（最好是255个字符）。
	//$hashed_password = password_hash($password,PASSWORD_DEFAULT);

	$errors = array();

	//帳號登入驗證
	if($_POST){
		//先確認每個欄位是否都被填寫
		if(empty($_POST['email'])||empty($_POST['password'])){
			$errors[] = "You must provide email and password.";
		}

		//確認信箱是否符合格式
		//filter_var() 函数通过指定的过滤器过滤变量。如果成功，则返回已过滤的数据，如果失败，则返回 false。
		//FILTER_VALIDATE_EMAIL 过滤器把值作为电子邮件地址来验证。
		if(!filter_var($email,FILTER_VALIDATE_EMAIL)){
			$errors[] = "You must enter a valid email.";
		}

		//確認信箱是否存在
		$emailQuery = $db->query("SELECT * FROM admin WHERE email = '$email'");
		$user = mysqli_fetch_assoc($emailQuery);
		$userCount = mysqli_num_rows($emailQuery);
		if($userCount<1){
			$errors[] = "The email doesn't exist in out database.";
		}

		//確認password是否>=6個字
		//strlen() 函式會回傳字串的長度，其中的＂字串＂是必要項目，即為要計算長度的 String。
		//需要注意的是 strlen() 函式並不會判斷字串的編碼，也就是說 strlen() 
		//無法精準的判斷繁體中文字的字數，在萬國碼 UTF-8 的編碼下，繁體中文字型一個字有 3 個 bytes，所以會回傳 3 
		//而不是回傳 1 唷！如果你想要在字串長度判斷加上編碼條件，可以使用 mb_strlen() 函式。
		// if(strlen($password)<6){
		// 	$errors[] = "The password must be at least 6 characters.";
		// }

		//確認輸入的密碼是否吻合database裡的密碼
		//password_verify() 函数用于验证密码是否和散列值匹配。PHP 版本要求: PHP 5 >= 5.5.0, PHP 7
		//語法:bool password_verify ( string $password , string $hash )
		//参数说明：
		//password: 用户的密码。
		//hash: 一个由 password_hash() 创建的散列值。
		if(!password_verify($password,$user['password'])){
			$errors[] = "The password does not match our records.Please try again.";
		}

		//確認是否有錯誤產生
		if(!empty($errors)){
			echo showErrors($errors);
		}else{
			//若無錯誤產生即執行登入
			$user_id = $user['id'];
			login($user_id);
		}
	}

 ?>
 	<style>
 		body{
 			background-image:url("../images/background/background.jpg");
 			background-size:cover;
 			background-attachment: fixed;
 		}
 	</style>
			
	<div class="login-frame">
		<form action="login.php" method="post">
			<h1 class="text-center" style="font-weight: 900;">管理員登入</h1>
			<div class="form-group">
				<label for="email">Email</label>
				<input type="email" name="email" id="email" class="form-control" placeholder="請輸入信箱">
			</div>
			<div class="form-group">
				<label for="password">密碼</label>
				<input type="password" name="password" id="password" class="form-control" placeholder="請輸入密碼">
			</div>		
			<div class="form-group pull-right">
				<a href="../i_culture_index.html" class="btn btn-success ">前往官網</a>
				<input type="submit" value="登入" class="btn btn-primary"> 
			</div>

			<div class="clearfix"></div>
		</form>
	</div>

 <?php 
 	include BASEURL."/admin/include/footer.php";
  ?>