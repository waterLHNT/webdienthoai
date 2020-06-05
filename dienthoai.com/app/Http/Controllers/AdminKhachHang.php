<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\khachhang;
class AdminKhachHang extends Controller
{
	 public function getDanhsach(){
    	$khachhang =  khachhang::all();
    	return view('admin.khachhang.danhsach',['khachhang'=>$khachhang]);
    }


    public function getXoa($id)
    {
    	$khachhang = khachhang::find($id)->delete();
    	return redirect('admin/khachhang/danhsach')->with('thongbao','Xóa thành công');
    }
    

}
