@extends('admin.layout.index')
@section('content')
<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Người dùng
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
                                <th>Email</th>
                                <th>Họ tên</th>
                                <th>Số điện thoại</th>
                                <th>Địa chỉ</th>
                                <th>Quyền</th>
                                <th>Xóa</th>
                                <th>Sửa</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($users as $u)
                            <tr align="center">
                                <td>{{$u->id}}</td>
                                <td>{{$u->email}}</td>
                                <td>{{$u->full_name}}</td>
                                <td>{{$u->phone}}</td>
                                <td>{{$u->address}}</td>
                                 <td>
                                    @if($u->level != 0)
                                        {{'Quản trị viên'}}
                                    @else
                                         {{'Khách hàng'}}
                                    @endif
                                </td>
                                
                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="admin/users/xoa/{{$u->id}}"> Xóa</a></td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="admin/users/sua/{{$u->id}}">Sửa</a></td>
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