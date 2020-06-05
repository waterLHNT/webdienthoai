@extends('admin.layout.index')
@section('content')
<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Danh sách
                            <small>Khách Hàng</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr align="center">
                                <th>ID</th>
                                <th>Họ tên</th>
                                <th>Tài khoản</th>
                                <th>Email</th>
                                <th>Số điện thoại</th>
                                <th>Địa chỉ</th>
                                <th>Xóa</th>
                               
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($khachhang as $kh)
                            <tr class="odd gradeX" align="center">
                                <td>{{$kh->makh}}</td>
                                <td>{{$kh->full_name}}</td>
                                <td>{{$kh->username}}</td>
                                <td>{{$kh->email}}</td>
                                <td>{{$kh->phone}}</td>
                                <td>{{$kh->address}}</td>
                               
                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="admin/khachhang/xoa/{{$kh->makh}}"> Xóa </a></td>
                                
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