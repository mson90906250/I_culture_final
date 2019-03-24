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
      <a class="navbar-brand" href="index.html">❤文創-審計新村</a><!-- 用glyphicon加上icon -->
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
<!-- -----選單2及下拉選單----- -->
      <ul class="nav navbar-nav navbar-right">
        <li><a href="iculture_about.html"><i class="fas fa-edit mr5"></i>關於我們</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" role="button" href="#" ><i class="fas fa-coffee mr5"></i>店家介紹</a>
          <ul class="dropdown-menu">
            <li><a href="i_culture_shop.php?shop_type=f">美食類</a></li>
            <li><a href="i_culture_shop.php?shop_type=c">文創類</a></li>
          </ul>
        </li>
        
        <li><a href="iculture_traffic.html"><i class="fas fa-location-arrow mr5"></i>交通資訊</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>