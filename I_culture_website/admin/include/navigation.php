<nav class="navbar navbar-default wow"><!-- default預設白 inverse黑色 -->
  <div class="container-fluid"><!-- container-fluid 填滿 -->
    <!-- header為選單主要標題 LOGO也可置放於此 -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
<!-- 	        漢堡選單的線條 寫幾個就幾個 -->
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.php">❤文創-審計新村 Admin</a><!-- 用glyphicon加上icon -->
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
<!-- -----選單2及下拉選單----- -->
      <ul class="nav navbar-nav navbar-left">
        <li><a href="shop.php">Shop</a></li>
        <?php if(hasPermission("a")): ?>
          <li><a href="user.php">User</a></li>
        <?php endif; ?>
        <li class="dropdown'">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Hello <?= $user_data['username'] ?> ! <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="change_password.php">Change Password</a></li>
            <li><a href="logout.php">Log Out</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>