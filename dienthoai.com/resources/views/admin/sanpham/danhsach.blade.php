@extends('admin.layout.index')
@section('content')
<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Sản phẩm
                            <small>Danh sách</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                     <div  style="padding-bottom:120px">
                        @if(session('thongbao'))
                       <div class="alert alert-success" >
                            {{session('thongbao')}}
                        </div>
                        @endif
                    
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr >
                                <th>ID</th>
                                <th>Tên</th>
                                <th >Mô tả</th>
                                <th>Loại</th>
                                <th>Giá</th>
                                <th>Hình ảnh</th>
                                <th>Rom</th>
                                <th>SL</th>
                                <th>ID thương hiệu</th>
                                <th>Xóa</th>
                                <th>Sửa</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($sanpham as $sp)
                            <tr align="center">
                                <td>{{$sp->madienthoai}}</td>
                                <td>{{$sp->tendienthoai}}</td>
                                <td>{{$sp->mota}}</td>
                                <td>
                                    @if($sp->new_sanpham == 1)
                                        {{'Sản phẩm mới'}}
                                    @else
                                         {{'Sản phẩm cũ'}}
                                    @endif
                                </td>
                                <td>{{$sp->gia}}</td>
                                <td> <p> {{$sp->hinh}} </p> 
                                    <img width="100px" src="source/themes/images/products/{{$sp->hinh}}">
                                </td>
                                <td>{{$sp->rom}}</td>
                                <td>{{$sp->soluong}}</td>
                                <td>{{$sp->mathuonghieu}}</td>
                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="admin/sanpham/xoa/{{$sp->madienthoai}}"> Xóa</a></td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="admin/sanpham/sua/{{$sp->madienthoai}}">Sửa</a></td>
                            </tr>
                            @endforeach
                            
                        </tbody>
                    </table>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
</div>
@endsection