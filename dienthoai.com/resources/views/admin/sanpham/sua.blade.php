@extends('admin.layout.index')
@section('content')
<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Sản phẩm
                            <small>{{$sanpham->tendienthoai}}</small>
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
                        <form action="admin/sanpham/sua/{{$sanpham->madienthoai}}" method="POST" >
                             <input type="hidden" name="_token" value="{{ csrf_token() }}">
                            <div class="form-group">
                                <label>Mã điện thoại</label>
                                <input class="form-control" name="madienthoai" readonly="" value="{{$sanpham->madienthoai}}"/>
                            </div>
                            <div class="form-group">
                                <label>Tên điện thoại</label>
                                <input class="form-control" name="tendienthoai" placeholder="Vui lòng nhập tên điện thoại" value="{{$sanpham->tendienthoai}}"/>
                            </div>
                            
                            <div class="form-group">
                                <label>Mô tả</label>
                                <textarea class="form-control ckeditor" name="mota" >{{$sanpham->mota}}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Sản phẩm mới</label>
                                <select class="form-control" name="new_sanpham">
                                    <option value="{{$sanpham->new_sanpham}}">{{$sanpham->new_sanpham}}</option>
                                    <option value="0"> 0 </option>
                                    <option value="1"> 1 </option>
                                </select>
                            </div>
                           <div class="form-group">
                                <label>Giá</label>
                                <input class="form-control" name="gia" placeholder="Vui lòng nhập giá điện thoại" value="{{$sanpham->gia}}" />
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh</label>
                                 <p> <img  width="100px" src="source/themes/images/products/{{$sanpham->hinh}}">
                                 </p>

                                
                                 <input type="file" class="form-control" name="hinh" value="{{$sanpham->hinh}}" />
                                 <!-- <input type="text" class="form-control" name="hinh2" value="{{$sanpham->hinh}}" /> -->

                            </div>
                            <div class="form-group">
                                <label>Rom</label>
                                <input class="form-control" name="rom" placeholder="Vui lòng nhập rom/ram điện thoại" value="{{$sanpham->rom}}" />
                            </div>
                            <div class="form-group">
                                <label>Số lượng</label>
                                <input class="form-control" name="soluong" placeholder="Vui lòng nhập số lượng điện thoại" value="{{$sanpham->soluong}}" />
                            </div>
                            <div class="form-group">
                                <label>Mã thương hiệu</label>
                                <select class="form-control" name="mathuonghieu">
                                    
                                    <option value="{{$sanpham->mathuonghieu}}">{{$sanpham->mathuonghieu}}</option>
                                    @foreach($thuonghieu as $th)
                                    <option value="{{$sanpham->mathuonghieu}}">{{$th->tenthuonghieu}}</option>
                                    @endforeach

                                    
                                </select>
                               <!--  <input class="form-control" name="mathuonghieu" placeholder="Vui lòng nhập số lượng điện thoại" /> -->
                                
                            </div>
                            <button type="submit" class="btn btn-default">Sửa</button>
                            <button type="reset" class="btn btn-default">Làm mới</button>
                        <form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
 </div>
 @endsection