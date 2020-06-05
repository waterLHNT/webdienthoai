<?php
namespace App\Http\Controllers;
use App\thuonghieu;
use App\sanpham;
use Illuminate\Http\Request;

class AdminThuongHieu extends Controller
{
	
    public function getDanhsach(){
    	$thuonghieu =  thuonghieu::all();
    	return view('admin.thuonghieu.danhsach',['thuonghieu'=>$thuonghieu]);
    }
    public function getSua($id){
    	$thuonghieu = thuonghieu::find($id);
    	return view('admin.thuonghieu.sua',['thuonghieu'=>$thuonghieu]);
    }

    public function postSua(Request $req,$id){
    	$thuonghieu = thuonghieu::find($id);
    	$this->validate($req,
    		[
    			'tenthuonghieu' => 'required|unique:thuonghieu,tenthuonghieu|min:3|max:100'

	    	],
	    	[

	    		'tenthuonghieu.required' => 'Bạn chưa nhập tên thể loại',
    			'tenthuonghieu.unique' => 'Tên thương hiệu đã tồn tại',
    			'tenthuonghieu.min' => 'Tên thương hiệu phải có độ dài từ 3 đến 100 ký tự',
    			'tenthuonghieu.max' => 'Tên thương hiệu phải có độ dài từ 3 đến 100 ký tự',
	    	]
	    );
    	$thuonghieu->mathuonghieu = $req->mathuonghieu;
	    $thuonghieu->tenthuonghieu = $req->tenthuonghieu;
	    $thuonghieu->save();
	    return redirect('admin/thuonghieu/sua/'.$id)->with('thongbao','Sửa thành công');
    }


    public function getThem(){

    	return view('admin.thuonghieu.them');

    }
    public function postThem(Request $req){
    	$this->validate($req,
    		[ 
    			'mathuonghieu' => 'required|unique:thuonghieu,mathuonghieu|min:1',
    			'tenthuonghieu' => 'required|unique:thuonghieu,tenthuonghieu|min:3|max:100'
    		],
    		[
    			'mathuonghieu.required' => 'Bạn chưa nhập mã thương hiệu',
    			'mathuonghieu.unique' => 'Mã bạn nhập đã có tồn tại',
    			'mathuonghieu.min' => 'Mã thương hiệu phải có độ dài từ 1 ký tự trở lên',
    			'tenthuonghieu.required' => 'Bạn chưa nhập tên thể loại',
    			'tenthuonghieu.unique' => 'Tên thương hiệu đã tồn tại',
    			'tenthuonghieu.min' => 'Tên thương hiệu phải có độ dài từ 3 đến 100 ký tự',
    			'tenthuonghieu.max' => 'Tên thương hiệu phải có độ dài từ 3 đến 100 ký tự',
    		]
    	);
    	$thuonghieu = new thuonghieu;
    	$thuonghieu->mathuonghieu = $req->mathuonghieu;
    	$thuonghieu->tenthuonghieu = $req->tenthuonghieu;
    	$thuonghieu->save();
    	return redirect('admin/thuonghieu/them')->with('thongbao','Thêm thành công');
    }

    public function getXoa($id)
    {
        
        // $sanpham = sanpham::where('mathuonghieu',$id);
       
    	$thuonghieu = thuonghieu::find($id)->delete();
 
        // if( isset($sanpham))
        //   return redirect()->back()->with('thongbao','Mã đã tồn tại ở sản phẩm'); 
        // else
                
              
                return redirect('admin/thuonghieu/danhsach')->with('thongbao','Xóa thành công');
            
            
    	
    }
    
    
}
