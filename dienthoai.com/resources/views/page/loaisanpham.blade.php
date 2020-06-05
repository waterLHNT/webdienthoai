@extends('master')
@section('content')
<div class="span9">
    <ul class="breadcrumb">
		<li><a href="{{route('trang-chu')}}">Home</a> <span class="divider">/</span></li>
		<li class="active">Sản phẩm</li>
    </ul>
    
	<h3> Sản phẩm {{$thuonghieu->tenthuonghieu}}<small class="pull-right"> </small></h3>

	<p class="pull-left">Tìm thấy {{count($sp_theoloai)}} sản phẩm</p>

	
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
				<img src="source/themes/images/products/3.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>Mới | Có sẵn</h3>				
				<hr class="soft"/>
				<h5>Tên sản phẩm </h5>
				<p>
				Ngày nay ngành công nghiệp đồ lót là một trong những lĩnh vực kinh doanh thành công nhất. Chúng tôi luôn giữ liên lạc với các xu hướng thời trang mới nhất -
						đó là lý do tại sao hàng hóa của chúng tôi rất phổ biến ..
				</p>
				<a class="btn btn-small pull-right" href="#">Xem chi tiết</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
			<h3> 2.000.000vnd</h3>
			<label class="checkbox">
				<input type="checkbox">  Thêm sản phẩm 
			</label><br/>
			
			  <a href="chitietsp.php" class="btn btn-large btn-primary"> Add to <i class=" icon-shopping-cart"></i></a>
			  <a href="#" class="btn btn-large"><i class="icon-zoom-in"></i></a>
			
				</form>
			</div>
		</div>
		
		
		<hr class="soft"/>
	</div>

	<div class="tab-pane  active" id="blockView">
		<!-- nút màu xanh-->
		
		<ul class="thumbnails">
			@foreach($sp_theoloai as $sp)
			<li class="span3">
				
			  <div class="thumbnail">
				<a href="{{route('chitietsanpham',$sp->madienthoai)}}"><img src="source/themes/images/products/{{$sp->hinh}}" alt=""/></a>
				<div class="caption">
				  <h5>{{$sp->tendienthoai}}</h5>
				  <p> 
					{{$sp->rom}}
				  </p>
				  <!-- 3 nút button-->
				   <h4 style="text-align:center"><a class="btn" href="{{route('chitietsanpham',$sp->madienthoai)}}"> <i class="icon-zoom-in"></i></a>
				   	<a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> 
				   	<a class="btn btn-primary" href="#">{{number_format($sp->gia)}} vnd</a></h4>
				</div>
			  </div>
			 
			</li> @endforeach	
		  </ul>
		 
</div>
<div class="row">
			<div class="pagination" style="text-align: center;"> {{$sp_theoloai->links()}} </div>
		</div>
	<hr class="soft"/>
	</div>
</div>

	<a href="compair.php" class="btn btn-large pull-right">Sản phẩm hợp tác</a>
<!-- <div class="row">
	<div class="pagination"> {{$sp_theoloai->links()}} </div>
</div> -->
			<br class="clr"/>
		</div>
@endsection
