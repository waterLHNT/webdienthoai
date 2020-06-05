<!DOCTYPE html>
<html lang="en">
  <head>
    @include('head')
  </head>
<body>

<!-- Navbar ================================================== -->
<!-- menu đk đn-->
	@include('header')
<!-- Header End====================================================================== -->

<!-- cái hình logo bự-->
<div id="carouselBlk">
	@include('logo')
</div>

<!-- content-->
<div id="mainBody">
	<div class="container">
	<div class="row">
<!-- Sidebar ================================================== -->
<!-- loại dt bên trái-->
		@include('leftmenu')

<!-- Sidebar end=============================================== -->
		 @yield('content') 
		  
	</div>
	
	</div>
	
</div>
	 
<!-- Footer ================================================================== -->
	@include('footer')
<!-- Placed at the end of the document so the pages load faster 

	
	============================================= -->
	<script src="source/themes/js/jquery.js" type="text/javascript"></script>
	<script src="source/themes/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="source/themes/js/google-code-prettify/prettify.js"></script>
	<script src="source/themes/js/bootshop.js"></script>
    <script src="source/themes/js/jquery.lightbox-0.5.js"></script>
	<!-- Themes switcher section ============================================================================================= -->

<span id="themesBtn"></span>
</body>
</html>