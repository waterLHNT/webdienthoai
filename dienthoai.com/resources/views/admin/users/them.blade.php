@extends('admin.layout.index')
@section('content')
<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Người dùng
                            <small>Thêm</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                         @if(count($errors) > 0)
                            <div class="alert alert-danger">
                                    @foreach($errors->all() as $err)
                                        {{$err}} <br>
                                    @endforeach
                            </div>
                        @endif
                        @if(session('thongbao'))
                            <div class="alert alert-success">
                                {{session('thongbao')}}
                            </div>
                        @endif
                        <form action="admin/users/them" method="POST">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                           <div class="form-group">
                                <label>ID</label>
                                 <input class="form-control" name="id" placeholder="Vui lòng điền ID" />
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input  type="email" class="form-control" name="email" placeholder="Vui lòng điền email" />
                            </div>
                          
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" class="form-control" name="password" placeholder="Vui lòng điền mật khẩu" />
                            </div>
                            <div class="form-group">
                                <label>Confirm password</label>
                                <input type="password" class="form-control" name="password2" placeholder="Vui lòng xác nhận lại mật khẩu" />
                            </div>
                            <div class="form-group">
                                <label>Họ tên</label>
                                 <input class="form-control" name="full_name" placeholder="Vui lòng điền họ tên" />
                            </div>
                           
                            <div class="form-group">
                                <label for="phone">Số điện thoại</label>
                                 <input type="tel" class="form-control" name="phone"    placeholder="Vui lòng điền số điện thoại" />
                            </div>
                             <div class="form-group">
                                <label>Quyền</label>
                                <select class="form-control" name="level">
                                    <option value="">Chọn quyền người dùng</option>
                                    <option value="1">Quản trị viên</option>
                                    <option value="0">Khách hàng</option>
                                </select>
                            </div>
                             <div class="form-group">
                                <label for="phone">Địa chỉ</label>
                                 <textarea type="tel" class="form-control" name="address"    placeholder="Vui lòng điền số điện thoại"> </textarea>
                            </div>
                            <button type="submit" class="btn btn-default">Thêm</button>
                            <button type="reset" class="btn btn-default">Làm mới</button>
                        <form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
 </div>
 @endsection