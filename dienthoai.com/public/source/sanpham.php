<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Bootshop online Shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
<!--Less styles -->
   <!-- Other Less css file //different less files has different color scheam
	<link rel="stylesheet/less" type="text/css" href="themes/less/simplex.less">
	<link rel="stylesheet/less" type="text/css" href="themes/less/classified.less">
	<link rel="stylesheet/less" type="text/css" href="themes/less/amelia.less">  MOVE DOWN TO activate
	-->
	<!--<link rel="stylesheet/less" type="text/css" href="themes/less/bootshop.less">
	<script src="themes/js/less.js" type="text/javascript"></script> -->
	
<!-- Bootstrap style --> 
    <link id="callCss" rel="stylesheet" href="themes/bootshop/bootstrap.min.css" media="screen"/>
    <link href="themes/css/base.css" rel="stylesheet" media="screen"/>
<!-- Bootstrap style responsive -->	
	<link href="themes/css/bootstrap-responsive.min.css" rel="stylesheet"/>
	<link href="themes/css/font-awesome.css" rel="stylesheet" type="text/css">
<!-- Google-code-prettify -->	
	<link href="themes/js/google-code-prettify/prettify.css" rel="stylesheet"/>
<!-- fav and touch icons -->
    <link rel="shortcut icon" href="themes/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="themes/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="themes/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="themes/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="themes/images/ico/apple-touch-icon-57-precomposed.png">
	<style type="text/css" id="enject"></style>
  </head>
<body>

<!-- Navbar ================================================== -->

<!-- thanh menu trên-->

<div id="logoArea" class="navbar">
	<?php 
	include "subview/menu.php";
	?>
</div>
<!-- Header End====================================================================== -->
<div id="mainBody">
	<div class="container">
	<div class="row">
<!-- Sidebar ================================================== -->
<!-- thanh dien thoai bên trái-->
	<!-- loại dt bên trái-->
	<div id="sidebar" class="span3">
		<?php
		include "subview/left.php";
		?>
	</div>
<!-- Sidebar end=============================================== -->
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.html">Home</a> <span class="divider">/</span></li>
		<li class="active">Tên sản phẩm</li>
    </ul>
	<h3> Tên sản phẩm <small class="pull-right"> </small></h3>	
	
<div id="myTab" class="pull-right">
 <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
 <a href="#blockView" data-toggle="tab"><span class="btn btn-large btn-primary"><i class="icon-th-large"></i></span></a>
</div>
<br class="clr"/>
<div class="tab-content">
	<div class="tab-pane" id="listView">

		<!-- nút màu trắng -->
		<div class="row">	  
			<div class="span2">
				<img src="themes/images/products/3.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>Mới | Có sẵn</h3>				
				<hr class="soft"/>
				<h5>Tên sản phẩm </h5>
				<p>
				Ngày nay ngành công nghiệp đồ lót là một trong những lĩnh vực kinh doanh thành công nhất. Chúng tôi luôn giữ liên lạc với các xu hướng thời trang mới nhất -
						đó là lý do tại sao hàng hóa của chúng tôi rất phổ biến ..
				</p>
				<a class="btn btn-small pull-right" href="chitietsp.php">Xem chi tiết</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
			<h3> 2.000.000vnd</h3>
			<label class="checkbox">
				<input type="checkbox">  Thêm sản phẩm 
			</label><br/>
			
			  <a href="chitietsp.php" class="btn btn-large btn-primary"> Add to <i class=" icon-shopping-cart"></i></a>
			  <a href="chitietsp.php" class="btn btn-large"><i class="icon-zoom-in"></i></a>
			
				</form>
			</div>
		</div>
		
		
		<hr class="soft"/>
	</div>

	<div class="tab-pane  active" id="blockView">
		<!-- nút màu xanh-->
		
		<ul class="thumbnails">
			<li class="span3">
			  <div class="thumbnail">
				<a href="chitietsp.php"><img src="themes/images/products/3.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Manicure &amp; Pedicure</h5>
				  <p> 
					I'm a paragraph. Click here 
				  </p>
				  <!-- 3 nút button-->
				   <h4 style="text-align:center"><a class="btn" href="chitietsp.php"> <i class="icon-zoom-in"></i></a>
				   	<a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> 
				   	<a class="btn btn-primary" href="#">2.000.000 vnd</a></h4>
				</div>
			  </div>
			</li>

			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"><img src="themes/images/products/3.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Manicure &amp; Pedicure</h5>
				  <p> 
					I'm a paragraph. Click here 
				  </p>
				  <!-- 3 nút button-->
				   <h4 style="text-align:center"><a class="btn" href="chitietsp.php"> <i class="icon-zoom-in"></i></a>
				   	<a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> 
				   	<a class="btn btn-primary" href="#">2.000.000 vnd</a></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"><img src="themes/images/products/3.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Manicure &amp; Pedicure</h5>
				  <p> 
					I'm a paragraph. Click here 
				  </p>
				  <!-- 3 nút button-->
				   <h4 style="text-align:center"><a class="btn" href="chitietsp.php"> <i class="icon-zoom-in"></i></a>
				   	<a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> 
				   	<a class="btn btn-primary" href="#">2.000.000 vnd</a></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"><img src="themes/images/products/3.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Manicure &amp; Pedicure</h5>
				  <p> 
					I'm a paragraph. Click here 
				  </p>
				  <!-- 3 nút button-->
				   <h4 style="text-align:center"><a class="btn" href="chitietsp.php"> <i class="icon-zoom-in"></i></a>
				   	<a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> 
				   	<a class="btn btn-primary" href="#">2.000.000 vnd</a></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"><img src="themes/images/products/3.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Manicure &amp; Pedicure</h5>
				  <p> 
					I'm a paragraph. Click here 
				  </p>
				  <!-- 3 nút button-->
				   <h4 style="text-align:center"><a class="btn" href="chitietsp.php"> <i class="icon-zoom-in"></i></a>
				   	<a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> 
				   	<a class="btn btn-primary" href="#">2.000.000 vnd</a></h4>
				</div>
			  </div>
			</li>
			<li class="span3">
			  <div class="thumbnail">
				<a href="product_details.html"><img src="themes/images/products/3.jpg" alt=""/></a>
				<div class="caption">
				  <h5>Manicure &amp; Pedicure</h5>
				  <p> 
					I'm a paragraph. Click here 
				  </p>
				  <!-- 3 nút button-->
				   <h4 style="text-align:center"><a class="btn" href="chitietsp.php"> <i class="icon-zoom-in"></i></a>
				   	<a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> 
				   	<a class="btn btn-primary" href="#">2.000.000 vnd</a></h4>
				</div>
			  </div>
			</li>
		  </ul>
	<hr class="soft"/>
	</div>
</div>

	<a href="compair.php" class="btn btn-large pull-right">Sản phẩm hợp tác</a>
	<div class="pagination">
			<ul>
			<!-- <li><a href="#">&lsaquo;</a></li> -->
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			
			
			</ul>
			</div>
			<br class="clr"/>
</div>
</div>
</div>
</div>
<!-- MainBody End ============================= -->
<!-- Footer ================================================================== -->
	<div  id="footerSection">
	<div class="container">
		<?php include "subview/footer.php";?>
	</div><!-- Container End -->
	</div>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script src="themes/js/jquery.js" type="text/javascript"></script>
	<script src="themes/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="themes/js/google-code-prettify/prettify.js"></script>
	
	<script src="themes/js/bootshop.js"></script>
    <script src="themes/js/jquery.lightbox-0.5.js"></script>
	
<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script src="themes/js/jquery.js" type="text/javascript"></script>
	<script src="themes/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="themes/js/google-code-prettify/prettify.js"></script>
	
	<script src="themes/js/bootshop.js"></script>
    <script src="themes/js/jquery.lightbox-0.5.js"></script>
	
	<!-- Themes switcher section ============================================================================================= -->

<span id="themesBtn"></span>
</body>
</html>