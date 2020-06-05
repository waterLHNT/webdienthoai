
	
	<div class="container">
		<div id="content">

			
			<form action="{{route('dang-ky')}}" method="post" class="beta-form-checkout">
				<input type="hidden" name="_token" value="{{csrf_token()}}">
				<div class="row">
					<div class="col-sm-3"></div>
					@if(count($errors)>0)
					<div class="alert alert-danger">
						@foreach($errors->all() as $err)
						{{$err}}
						@endforeach
					</div>
					@endif
					@if(Session::has('thanhcong'))
					<div class="alert alert-success">{{Session::get('thanhcong')}}</div>
						@endif
						
					
					<div class="col-sm-6">
						<h1>Đăng kí</h1>
						<div class="space20">&nbsp;</div>
						<div class="form-block">
							<label for="email">Email address*</label>
							<input type="email" name="email" required>
						</div>
						<br>
						<div class="form-block">
							<label for="phone">Password*</label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="password" name="password" required>
						</div>
						<br>
						<div class="form-block">
							<label for="phone">Re password*</label>
							&nbsp;
							<input type="password" name="re_password"  required>
						</div>
						<br>

						<div class="form-block">
							<label for="your_last_name">Họ Tên *</label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="text" name="fullname" required>
						</div>
						<br>
						
						<div class="form-block">
							<label for="phone">Phone*</label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="text" name="phone" required>
						</div>
						<br>

						<div class="form-block">
							<label for="adress">Address*</label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="text" name="address"  required>
						</div>
						<br>

						<div class="form-block">
							<button type="submit" class="btn btn-primary">Register</button>
						</div>
					</div>
					<div class="col-sm-3"></div>
				</div>
			</form>
		</div> <!-- #content -->
	</div> <!-- .container -->