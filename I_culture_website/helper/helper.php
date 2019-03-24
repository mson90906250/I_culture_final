<?php 


//建立function的地方

	function showErrors($errors){
		$display = "<ul class='bg-danger'>";
		
		foreach ($errors as $error ) {
			$display .= "<li>".$error."</li>";
		}
		
		$display .= "</ul>";

		echo $display;
	}

	//簡單處理被輸入html或javascript語法
	function sanitize($dirty){
		return htmlentities($dirty,ENT_QUOTES,"UTF-8");
	}

	function login($user_id){
		$_SESSION['SBUser'] = $user_id;
		//更新last_login
		//因為$db為global變數所以不能直接被function使用 必須在前面加上global才能用
		global $db;
		$date = gmdate('Y-m-d H:i:s',time() + 8*3600);
		$db->query("UPDATE admin SET last_login = '$date' WHERE id = '$user_id'");
		$_SESSION['success_flash'] = "You are now logged in.";
		header("Location: index.php");
	}
	

	function isLoggedIn(){
		if(isset($_SESSION['SBUser']) && $_SESSION['SBUser'] > 0){
			return true;
		}
		return false;
	}

	function loginErrorRedirect($url = "login.php"){
		$_SESSION['error_flash'] = "You must be logged in to access that page.";
		header("Location: ".$url);
	}

	//in_array() 函数搜索数组中是否存在指定的值。
	//in_array(search,array,type)
	//注释：如果 search 参数是字符串且 type 参数被设置为 TRUE，则搜索区分大小写。
	function hasPermission($permission = "a"){
		global $user_data;
		//$permissionArray = explode(",",$user_data['permissions']);
		$user_type = $user_data['type'];
		if($user_type == $permission){
			return true;
		}
		return false;
	}

	function permissionErrorRedirect($url = "login.php"){
		$_SESSION['error_flash'] = "You do not have permission to access that page.";
		header("Location: ".$url);
	}


 ?>