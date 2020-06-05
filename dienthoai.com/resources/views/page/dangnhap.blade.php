<div class="container">
		<div id="content">
			
			<form action="{{route('dang-nhap')}}" method="post" class="beta-form-checkout">
				<input type="hidden" name="_token" value="{{csrf_token()}}">
				<div class="row">
					<div class="col-sm-3"></div>
					@if(Session::has('flag'))
					<div class="alert alert-{{Session::get('flag')}}">{{Session::get('message')}}
					</div>
					@endif
					<div class="col-sm-6">
						<h1>Đăng nhập</h1>
						<div class="space20">&nbsp;</div>

						
						<div class="form-block">
							<label for="email">Email address*</label>
							&nbsp;&nbsp;

							<input type="email" name="email" required>
						</div>
						<br>
						<div class="form-block">
							<label for="phone">Password*</label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="password" name="password" required>
						</div>
						<br>
						<div class="form-block">
							<button type="submit" class=" form-control btn btn-primary">Login</button>
						</div>
					</div>
					<div class="col-sm-3"></div>
				</div>
			</form>
		</div> </div>
	<!-- .container --> 


 