@extends('admin.layout.index')
@section('content')
<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Thương hiệu
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
                        <form action="admin/thuonghieu/them" method="POST">
                          
                                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                             <div class="form-group">
                                <label>Mã Thương Hiệu</label>
                                <input class="form-control" name="mathuonghieu" placeholder="Vui lòng nhập mã thương hiệu" />
                            </div>
                            <div class="form-group">
                                <label>Tên thương hiệu</label>
                                <input class="form-control" name="tenthuonghieu" placeholder="Vui lòng nhập tên thương hiệu" />
                            </div>
                            
                            <button type="submit" class="btn btn-default">Thêm</button>
                            <button type="reset" class="btn btn-default">Làm mới</button>
                        </form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
 </div>
 @endsection