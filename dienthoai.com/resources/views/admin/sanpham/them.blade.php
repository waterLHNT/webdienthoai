@extends('admin.layout.index')
@section('content')
<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Sản phẩm
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
                        <form action="admin/sanpham/them" method="POST" enctype="multipart/form-data">
                            <!-- enctype="multipart/form-data"> -->
                             <input type="hidden" name="_token" value="{{ csrf_token() }}">
                            <div class="form-group">
                                <label>Mã điện thoại</label>
                                <input class="form-control" name="madienthoai" placeholder="Vui lòng nhập mã điện thoại" />
                            </div>
                            <div class="form-group">
                                <label>Tên điện thoại</label>
                                <input class="form-control" name="tendienthoai" placeholder="Vui lòng nhập tên điện thoại" />
                            </div>
                            
                            <div class="form-group">
                                <label>Mô tả</label>
                                <textarea class="form-control ckeditor" name="mota"   rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Sản phẩm mới</label>
                                <select class="form-control" name="new_sanpham">
                                    <option value="">Chọn 1 là sản phẩm mới, 0 là sản phẫm cũ</option>
                                    <option value="0"> 0 </option>
                                    <option value="1"> 1 </option>
                                </select>
                            </div>
                           <div class="form-group">
                                <label>Giá</label>
                                <input class="form-control" name="gia" placeholder="Vui lòng nhập giá điện thoại" />
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh</label>
                                <input type="file" class="form-control" name="hinh" />
                            </div>
                            <div class="form-group">
                                <label>Rom</label>
                                <input class="form-control" name="rom" placeholder="Vui lòng nhập rom/ram điện thoại" />
                            </div>
                            <div class="form-group">
                                <label>Số lượng</label>
                                <input class="form-control" name="soluong" placeholder="Vui lòng nhập số lượng điện thoại" />
                            </div>
                            <div class="form-group">
                                <label>Mã thương hiệu</label>
                                <select class="form-control" name="mathuonghieu">
                                    <option value="0">Hãy chọn mã thương hiệu</option>
                                    @foreach($thuonghieu as $th)
                                    <option value="{{$th->mathuonghieu}}">{{$th->tenthuonghieu}}</option>
                                    @endforeach
                                </select>
                               <!--  <input class="form-control" name="mathuonghieu" placeholder="Vui lòng nhập số lượng điện thoại" /> -->
                                
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