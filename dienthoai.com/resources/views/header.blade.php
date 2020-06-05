<div id="header">
<div class="container">
<div id="welcomeLine" class="row">
	</div>
<!-- Navbar ================================================== -->
<div id="logoArea" class="navbar">
<a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
</a>
  <div class="navbar-inner">
    <a class="brand" href="index.html"><img src="source/themes/images/logo.png" alt="Bootsshop"/></a>
    <form class="form-inline navbar-search"  method="get"  action="{{route('search')}}" >
		<input id="key"  name="key"  type="text" placeholder="Nhập từ khóa cần tìm ...." />
		<button type="submit" id="search" class="btn btn-primary">Go</button>
    </form>

		
    <ul id="topMenu" class="nav pull-right">
	  <li class=""><a href="{{route('dang-ky')}}">Đăng ký</a></li>
	 <li class=""><a href="{{route('dang-nhap')}}">Đăng Nhập</a></li>

	
    </ul>
  </div>
</div>
</div>
</div>


