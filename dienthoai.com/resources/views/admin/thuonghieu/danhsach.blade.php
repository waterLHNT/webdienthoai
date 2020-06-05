@extends('admin.layout.index')
@section('content')
<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Thương hiệu
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
                            <tr align="center">
                                <th>Mã thương hiệu</th>
                                <th>Tên thương hiệu</th>
                                <th>Delete</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($thuonghieu as $th)
                            <tr class="odd gradeX" align="center">
                                <td>{{$th->mathuonghieu}}</td>
                                <td>{{$th->tenthuonghieu}}</td>
                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="admin/thuonghieu/xoa/{{$th->mathuonghieu}}"> Xóa</a></td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="admin/thuonghieu/sua/{{$th->mathuonghieu}}">Sửa</a></td>
                            </tr>
                            @endforeach
                            
                        </tbody>
                    </table>
                </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
</div>
@endsection