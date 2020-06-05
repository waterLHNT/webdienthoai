@extends('master')
@section('content')
<div class="span9">
    <ul class="breadcrumb">
    <li><a href="{{route('trang-chu')}}">Home</a> <span class="divider">/</span></li>
    <li><a href="#">Sản phẩm</a> <span class="divider">/</span></li>
    <li class="active">Chi tiết sản phẩm</li>
    </ul>	
	<div class="row">	  
			<div id="gallery" class="span3">
            <a href="source/themes/images/products/{{$sanpham->hinh}}" style="width:100%" title="{{$sanpham->tendienthoai}}">
				<img src="source/themes/images/products/{{$sanpham->hinh}}" style="width:100%" alt="{{$sanpham->tendienthoai}}"/>
            </a>
			<div id="differentview" class="moreOptopm carousel slide">
                <div class="carousel-inner">
                  <div class="item active">
                  	<!-- 3 cái hình-->
                   <a href="source/themes/images/products/{{$sanpham->hinh}}"> <img style="width:29%" src="themes/images/products/large/{{$sanpham->hinh}}" alt=""/></a>
                   <a href="source/themes/images/products/{{$sanpham->hinh}}"> <img style="width:29%" src="themes/images/products/large/f2.jpg" alt=""/></a>
                   <a href="source/themes/images/products/{{$sanpham->hinh}}" > <img style="width:29%" src="source/themes/images/products/{{$sanpham->hinh}}" alt=""/></a>
                  </div>
                  <!-- <div class="item">
                   <a href="themes/images/products/large/f3.jpg" > <img style="width:29%" src="themes/images/products/large/f3.jpg" alt=""/></a>
                   <a href="themes/images/products/large/f1.jpg"> <img style="width:29%" src="themes/images/products/large/f1.jpg" alt=""/></a>
                   <a href="themes/images/products/large/f2.jpg"> <img style="width:29%" src="themes/images/products/large/f2.jpg" alt=""/></a>
                  </div> -->
                </div>
              
              </div>
			  
			 <div class="btn-toolbar">
			  <div class="btn-group">
			  	<!-- Nguyên dãy hình dưới cái hình-->
				<span class="btn"><i class="icon-envelope"></i></span>
				<span class="btn" ><i class="icon-print"></i></span>
				<span class="btn" ><i class="icon-zoom-in"></i></span>
				<span class="btn" ><i class="icon-star"></i></span>
				<span class="btn" ><i class=" icon-thumbs-up"></i></span>
				<span class="btn" ><i class="icon-thumbs-down"></i></span>
			  </div>
			</div>
			</div>
			<div class="span6">
				<!-- tên sp lớn bên phải-->
				<h3> {{$sanpham->tendienthoai}} </h3>
				
				<hr class="soft"/>
				<form class="form-horizontal qtyFrm">
				  <div class="control-group">
					<label class="control-label"><span>{{number_format($sanpham->gia)}}</span></label>
					<div class="controls">
						<!-- so luong-->
					<input type="number" class="span1" placeholder="so luong"/>

					  <button type="submit" class="btn btn-large btn-primary pull-right"> Add to cart <i class=" icon-shopping-cart"></i></button>
					</div>
				  </div>
				</form>
				
				
				<hr class="soft clr"/>
				<p>
				
					{{$sanpham->mota}}

				</p>
				<a class="btn btn-small pull-right" href="#detail">Thêm chi tiết</a>
				<br class="clr"/>
			<a href="#" name="detail"></a>
			<hr class="soft"/>
			</div>
			
			<div class="span9">
            <ul id="productDetail" class="nav nav-tabs">
              <li class="active"><a href="#home" data-toggle="tab">Chi tiết sản phẩm</a></li>
              <!-- Khi bấm vào sp lien quan sẻ hiện ra cái form-->
              <li><a href="#profile" data-toggle="tab">Sản phẩm liên quan</a></li>
            </ul>


            <div id="myTabContent" class="tab-content">
              <div class="tab-pane fade active in" id="home">
			  <h4>Thông tin sản phẩm</h4>
                <table class="table table-bordered">
				<tbody>
				<tr class="techSpecRow"><th colspan="2">Thông tin chi tiết</th></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Thương Hiệu: </td><td class="techSpecTD2">{{$chitietsp->hieudienthoai}}</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Camera: </td><td class="techSpecTD2">{{$chitietsp->camera}}</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Chip xử lý: </td><td class="techSpecTD2"> {{$chitietsp->chip}}</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Màn hình: </td><td class="techSpecTD2"> {{$chitietsp->manhinh}}</td></tr>
				<tr class="techSpecRow"><td class="techSpecTD1">Bảo hành: </td><td class="techSpecTD2">{{$chitietsp->baohanh}}</td></tr>
				</tbody>
				</table>
				
				<h5>Nội dung</h5>
				<p>
				{{$chitietsp->noidung}}
				</p>

				
              </div>
             	 

		<!-- ĐÂY LÀ PHẦN KHI BẤM VÀO SẢN PHẨM LIÊN QUAN NÓ SẺ HIỆN RA 2 CAI CUC MÀU XANH VÀ MÀU TRĂNG -->

		<div class="tab-pane fade" id="profile">
		<div id="myTab" class="pull-right">
		 <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
		 <a href="#blockView" data-toggle="tab"><span class="btn btn-large btn-primary"><i class="icon-th-large"></i></span></a>
		</div>
		<br class="clr"/>
		<hr class="soft"/>
		<div class="tab-content">
			<!-- KHI BẤM VÀO CỤC MÀU TRẮNG RA CÁC SP NÀY-->
			<div class="tab-pane" id="listView">
				<div class="row">	  
					<div class="span2">
					<img src="source/themes/images/products/6.jpg" alt=""/>
					</div>
					<div class="span4">
						<h3>Mới | Sẵn có</h3>				
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
					<h3> 200vnd</h3>
					<label class="checkbox">
						<input type="checkbox">  Thêm sản phẩm vào compair
					</label><br/>
					
					<!-- 2 cái nút button-->
				<div class="btn-group">
				  <a href="#" class="btn btn-large btn-primary"> Add to <i class=" icon-shopping-cart"></i></a>
				  <a href="chitietsp.php" class="btn btn-large"><i class="icon-zoom-in"></i></a>
				 </div>
						</form>
					</div>
			</div>
			<hr class="soft"/>
		</div>


		<!--KHI  BÂM VÀ CỤC MÀU XANH-->

			<div class="tab-pane active" id="blockView">
				<ul class="thumbnails">
					@foreach($sp_tuongtu as $sptt)
					<li class="span3"> 
					  <div class="thumbnail">
						<a href="product_details.html"><img src="source/themes/images/products/{{$sptt->hinh}}" alt=""/></a>
						<div class="caption">
						  <h5>{{$sptt->tendienthoai}}</h5>
						  <p> 
							{{$sptt->rom}} 
						  </p>
						  <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">{{number_format($sptt->gia)}} VNĐ</a></h4>
						</div>
					  </div>
					  
					</li>
					@endforeach
					
				 </ul>

			<hr class="soft"/>

			</div>
				
				
		</div>

				<br class="clr">
					 </div>
		</div>
          </div>

	</div>
</div>
@endsection