@extends('master')
@section('content')
<div class="span9">		
			<h4>Tìm thấy {{count($timten)}} sản phẩm </h4>
				

			  <ul class="thumbnails">
			  	@foreach($timten as $new)
				<li class="span3">
					
				  <div class="thumbnail">
					<a  href="{{route('chitietsanpham',$new->madienthoai)}}"><img src="source/themes/images/products/{{$new->hinh}}" alt=""/></a>
					<div class="caption">
					  <h5>{{$new->tendienthoai}}</h5>
					  <p> 
						{{$new->rom}}
					  </p>
					 
					  <h4 style="text-align:center"><a class="btn" href="{{route('chitietsanpham',$new->madienthoai)}}"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">{{number_format($new->gia)}} VNĐ</a></h4>
					</div>
				  </div>

				</li>
			   @endforeach
			
			  </ul>	
			 		  
</div> 

@endsection
		