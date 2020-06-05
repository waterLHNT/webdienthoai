<div id="sidebar" class="span3">
		<div class="well well-small">
			@if(Session::has('cart')) 
			<a id="myCart" href="{{route('cart')}}"><img src="source/themes/images/ico-cart.png" alt="cart"> {{Session('cart')->totalQty}} sản phẩm  <span class="badge badge-warning pull-right"> Tổng tiền: {{Session('cart')->totalPrice}}</span></a>
			 @else 
			 <a id="myCart" href="{{route('cart')}}"><img src="source/themes/images/ico-cart.png" alt="cart">Giỏ hàng trống </a> 
			 @endif
			
		</div> 
		<ul id="sideManu" class="nav nav-tabs nav-stacked">
			<!-- Thanh bấm sản phẩm bên trái-->

			<li class="subMenu open"><a>Các loại Điện Thoại</a>
				@foreach($thuonghieu as $th)
				<ul>
				<li><a class="active" href="{{route('loaisanpham',$th->mathuonghieu)}}"><i class="icon-chevron-right"></i>{{$th->tenthuonghieu}}</a></li>
				</ul>
				@endforeach
			</li>		
		</ul>
		<br/>
		  <div class="thumbnail">
			<img src=" source/themes/images/products/apple1.jpg" alt="Bootshop panasonoc New camera"/>
			
		  </div><br/>
			<div class="thumbnail">
				<img src="source/themes/images/products/nokia1.jpg" title="Bootshop New Kindel" alt="Bootshop Kindel">
				
			  </div><br/>
			<div class="thumbnail">
				<img src="source/themes/images/products/samsung1.jpg" title="Bootshop Payment Methods" alt="Payments Methods">
				
			  </div>
			  <br/>
			  <div class="thumbnail">
				<img src="source/themes/images/products/nt.PNG" title="Bootshop Payment Methods" alt="Payments Methods">
				
			  </div>
	
	</div>