<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\sanpham;
use App\thuonghieu;
class AdminSanPham extends Controller
{
     
    public function getDanhsach(){
    	$sanpham =  sanpham::all();
    	return view('admin.sanpham.danhsach',compact('sanpham','thuonghieu'));
    }
    public function getSua($id){
    	$sanpham = sanpham::find($id);
        $thuonghieu = thuonghieu::all();
    	return view('admin.sanpham.sua',compact('sanpham','thuonghieu'));
    }

    public function postSua(Request $req,$id){
    	$sanpham = sanpham::find($id);

    	$this->validate($req,
    		[
    			'tendienthoai' => 'required|min:3|max:150',
                'mathuonghieu' => 'required',
                'mota' => 'required',
                'new_sanpham' => 'required',
                'gia' => 'required|numeric',
                // 'hinh' => 'required', 
                 // |image',
                'rom' => 'required|alpha_num',
                'soluong' => 'required|numeric'

	    	],
	    	[

	    		'tendienthoai.required' => 'Bạn chưa nhập tên điện thoại',
                'tendienthoai.unique' => 'Tên sản phẩm đã tồn tại',
                'tendienthoai.min' => 'Tên điện thoại phải có độ dài từ 3 đến 150 ký tự',
                'tendienthoai.max' => 'Tên điện thoại phải có độ dài từ 3 đến 150 ký tự',
                'mathuonghieu.required' => 'Bạn chưa chọn mã thương hiệu',
                'mathuonghieu.required' => 'Bạn chưa chọn sản phẩm mới',
                'new_sanpham' => 'Bạn chưa chọn sản phẩm mới hoặc cũ',
                'mota.required' => 'Bạn hãy nhập mô tả cho sản phẩm',
                'gia.required' =>'Bạn chưa nhập giá cho sản phẩm',
                'gia.numeric' => 'Giá sản phẩm chỉ được là số',
                // 'hinh.required' => 'Bạn chưa thêm hình ảnh cho sản phẩm',
                // 'hinh.image' => 'Vui lòng kiểm tra lại định dạng hình ảnh',
                'rom.required' => 'Bạn chưa nhập rom cho sản phẩm',
                'rom.alpha_num' => 'Chỉ được là chữ và số',
                'soluong.required' => 'Bạn chưa nhập số lượng cho sản phẩm',
                'soluong.numeric' => 'Số lượng chỉ được là số'
	    	]
	    );
        
    	$sanpham->tendienthoai = $req->tendienthoai;
        $sanpham->mathuonghieu = $req->mathuonghieu;
        $sanpham->mota = $req->mota;
        $sanpham->new_sanpham = $req->new_sanpham;
        $sanpham->gia = $req->gia;
         $sanpham->hinh = $req->hinh;
       

        $sanpham->rom = $req->rom;
        $sanpham->soluong = $req->soluong;

	    $sanpham->save();
	    return redirect('admin/sanpham/sua/'.$id)->with('thongbao','Sửa thành công');
    }


    public function getThem(){
    	$thuonghieu = thuonghieu::all();
    	return view('admin.sanpham.them',['thuonghieu'=>$thuonghieu]);

    }
    public function postThem(Request $req){
    	$this->validate($req,
    		[ 	
    			'madienthoai' => 'min:1',
    			'tendienthoai' => 'required|min:3|max:150',
    			'mathuonghieu' => 'required',
    			'mota' => 'required',
    			'new_sanpham' => 'required',
    			'gia' => 'required|numeric',
    			'hinh' => 'required',
                // |mimes:jpeg,png,jpg,gif,svg|max:2048
    			'rom' => 'required|alpha_num',
    			'soluong' => 'required|numeric'

    		],
    		[
    			'madienthoai.required' => 'Bạn chưa nhập mã điện thoại',
    			
    			'madienthoai.min' => 'Mã điện thoại phải có độ dài từ 1 ký tự trở lên',
    			'tendienthoai.required' => 'Bạn chưa nhập tên điện thoại',
    			'tendienthoai.min' => 'Tên điện thoại phải có độ dài từ 3 đến 150 ký tự',
    			'tendienthoai.max' => 'Tên điện thoại phải có độ dài từ 3 đến 150 ký tự',
    			'mathuonghieu.required' => 'Bạn chưa chọn mã thương hiệu',
    			'mathuonghieu.required' => 'Bạn chưa chọn sản phẩm mới',
                'new_sanpham' => 'Bạn chưa chọn sản phẩm mới hoặc cũ',
    			'mota.required' => 'Bạn hãy nhập mô tả cho sản phẩm',
    			'gia.required' =>'Bạn chưa nhập giá cho sản phẩm',
    			'gia.numeric' => 'Giá sản phẩm chỉ được là số',
    			'hinh.required' => 'Bạn chưa thêm hình ảnh cho sản phẩm',
    			'rom.required' => 'Bạn chưa nhập rom cho sản phẩm',
    			'rom.alpha_num' => 'Chỉ được là chữ và số',
    			'soluong.required' => 'Bạn chưa nhập số lượng cho sản phẩm',
    			'soluong.numeric' => 'Số lượng chỉ được là số'
    		]
    	);
         
              
         
    	$sanpham = new sanpham;
    	$sanpham->madienthoai = $req->madienthoai;
    	$sanpham->tendienthoai = $req->tendienthoai;
    	$sanpham->mathuonghieu = $req->mathuonghieu;
    	$sanpham->mota = $req->mota;
    	$sanpham->new_sanpham = $req->new_sanpham;
    	$sanpham->gia = $req->gia;
    	$sanpham->hinh = $req->file('hinh'); 
    	$sanpham->rom = $req->rom;
    	$sanpham->soluong = $req->soluong;
    	$sanpham->save();
    	return redirect('admin/sanpham/them')->with('thongbao','Thêm thành công');
    }

    public function getXoa($id)
    {
    	$sanpham = sanpham::find($id)->delete();
    	return redirect('admin/sanpham/danhsach')->with('thongbao','Xóa thành công');
    }
   
}
