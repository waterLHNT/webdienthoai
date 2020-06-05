@extends('admin.layout.index')
@section('content')
<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Thương hiệu
                            <small>{{$thuonghieu->tenthuonghieu}}</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                        <form action="admin/thuonghieu/sua/{{$thuonghieu->mathuonghieu}}" method="POST">
                            @csrf
                            @if(count($errors) >0 )
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
                            <div class="form-group">
                                <label>Mã thương hiệu</label>
                                <input class="form-control" name="mathuonghieu" readonly="" value="{{$thuonghieu->mathuonghieu}}"/>
                            </div>

                            <div class="form-group">
                                <label>Tên thương hiệu</label>
                                <input class="form-control" name="tenthuonghieu" placeholder="Vui lòng nhập tên thương hiệu" value="{{$thuonghieu->tenthuonghieu}}" />
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
