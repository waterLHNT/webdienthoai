@extends('master')
@section('content')
<div class="span9">
    <ul class="breadcrumb">
		<li><a href="{{route('trang-chu')}}">Home</a> <span class="divider">/</span></li>
		<li class="active"> GIỎ HÀNG</li>
    </ul>
	<h3>  GIỎ HÀNG [ <small>3 Item(s) </small>]<a href="products.html" class="btn btn-large pull-right"><i class="icon-arrow-left"></i> Tiếp tục mua sắm</a></h3>	
	<hr class="soft"/>
	<table class="table table-bordered">
		<tr><th>TÔI ĐÃ ĐĂNG KÝ RỒI  </th></tr>
		 <tr> 
		 <td>

		 	<!-- @if(isset($khachhang))
		 	{{"Email:".$khachhang->email}}
		 	<br>
		 	{{"Mật khẩu:".$khachhang->password}}
		 	@endif
 -->

			<form class="form-horizontal">
				
				<div class="control-group">
				  <label class="control-label" for="email">Email</label>
				  <div class="controls">
					<input type="text" name="email" placeholder="hihi">
				  </div>
				</div>
				<div class="control-group">
				  <label class="control-label" for="inputPassword1">Password</label>
				  <div class="controls">
					<input type="password" id="inputPassword1" placeholder="haha">
				  </div>
				</div>
				

				<div class="control-group">
				  <div class="controls">
					<button type="submit" class="btn">Sign in</button> OR <a href="{{route('dang-ky')}}" class="btn">Register Now!</a>
				  </div>
				</div>
				<div class="control-group">
					<div class="controls">
					  <a href="forgetpass.html" style="text-decoration:underline">Forgot password ?</a>
					</div>
				</div>
			</form>
			
		  </td>
		  </tr>
	</table>		
			
	<table class="table table-bordered">
			
              <thead>
                <tr>
                  <th>Sản Phẩm</th>
                  <th>Mô Tả</th>
                  <th>Số lượng / Cập nhật</th>
				  <th>Giá</th>
                  <th>Giảm giá</th>
             
				</tr>
              </thead>
              <tbody>
              	
                <tr>
                  <td> <img src="source/themes/images/products/"   alt=""/></a>Sản phẩm 1</td>
                  <td>Không có</td>
				  <td>
					<div class="input-append"><input class="span1" style="max-width:34px" placeholder="1" id="appendedInputButtons" size="16" type="text">
						<button class="btn" type="button"><i class="icon-minus"></i></button>
						<button class="btn" type="button"><i class="icon-plus"></i></button><button class="btn btn-danger" type="button"><i class="icon-remove icon-white"></i></button>				</div>
				  </td>
                  <td>giá </td>
                  <td>giá khuyến mãi</td>
   
                </tr>
				
                 
				 <tr>
                  <td colspan="6" style="text-align:right"><strong>Tổng ($120.000-$25.000) =</strong></td>
                  <td class="label label-important" style="display:block"> <strong> $95.000 </strong></td>
                </tr>

				</tbody>
			
            </table>
		
		
            <table class="table table-bordered">
			<tbody>
				 <tr>
                  <td> 
				<form class="form-horizontal">
				<div class="control-group">
				<label class="control-label"><strong>MÃ VOUCHERS: </strong> </label>
				<div class="controls">
				<input type="text" class="input-medium" placeholder="CODE">
				<button type="submit" class="btn"> THÊM VÀO		 </button>
				</div>
				</div>
				</form>
				</td>
                </tr>
				
			</tbody>
			</table>
			
			<table class="table table-bordered">
			 <tr><th>ƯU ĐÃI GIAO HÀNG CỦA BẠN </th></tr>
			 <tr> 
			 <td>
				<form class="form-horizontal">
				  <div class="control-group">
					<label class="control-label" for="inputCountry">Quốc gia </label>
					<div class="controls">
					  <input type="text" id="inputCountry" placeholder="Country">
					</div>
				  </div>
				  <div class="control-group">
					<label class="control-label" for="inputPost">Mã bưu điện </label>
					<div class="controls">
					  <input type="text" id="inputPost" placeholder="Postcode">
					</div>
				  </div>
				  <div class="control-group">
					<div class="controls">
					  <button type="submit" class="btn">ƯỚC TÍNH</button>
					</div>
				  </div>
				</form>				  
			  </td>
			  </tr>
            </table>		
	<a href="{{route('trang-chu')}}" class="btn btn-large"><i class="icon-arrow-left"></i> Tiếp tục mua sắm </a>
	<a href="login.html" class="btn btn-large pull-right">Next <i class="icon-arrow-right"></i></a>
	
</div>
</div></div>
</div>
@endsection