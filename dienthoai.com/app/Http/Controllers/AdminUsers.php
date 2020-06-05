<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;	
use Illuminate\Http\Request;
use App\User;
use App\users;	

class AdminUsers extends Controller
{
    public function getDanhsach(){
    	$users =  users::all();
    	return view('admin.users.danhsach',compact('users'));
    }
    public function getSua($id){
    	$users = users::find($id);
    	return view('admin.users.sua',['users'=>$users]);
    }

    public function postSua(Request $req,$id){
    	$users = users::find($id);
    	$this->validate($req,
    		[ 
    			
    			'password' => 'required|string|min:6|max:16',
    			'password2' => 'required|same:password',
    			'full_name' => 'required|string',
    			'level' => 'required',
    			'phone' => 'required|numeric|min:10'
    		],
    		[
    			
    			'password.required' => 'Mật khẩu không được để trống',
    			'password.string' => 'Mật khẩu không được chứa ký tự đặc biệt',
    			'password.min' => 'Mật khẩu phải có độ dài từ 6 đến 16 ký tự',
    			'password.confirmed' => 'Mật khẩu chưa được xác nhận',
    			'password2.required' => 'Cần xác nhận mật khẩu',
    			'password2.same' => 'Mật khẩu xác nhận không trùng nhau',
    			'full_name.required' => 'Họ tên không được để trống',
    			'full_name.string' => 'Họ tên không được chứa ký tự đặc biệt',
    			
    			'level.required' => 'Vui lòng chọn quyền cho admin',
    			'phone.required' => 'Số điện thoại không được để trống',
    			'phone.numeric' => 'Số điện thoại chi được là chữ số',
    			'phone.min' => 'Số điện thoại gồm 10 ký tự',
    			'phone.max' => 'Số điện thoại gồm 10 ký tự',

    		]
    	);
    	
    	// $users->id = $req->id;
    	// $users->username = $req->username;
    	$users->password = bcrypt($req->password);
    	$users->full_name = $req->full_name;
    	$users->level = $req->level;
    	$users->phone = $req->phone;
        $users->address = $req->address;
    	$users->save();
    	return redirect('admin/users/sua/'.$id)->with('thongbao','Sửa thành công');
    }


    public function getThem(){

    	return view('admin.users.them');

    }
    public function postThem(Request $req){
    	$this->validate($req,
    		[ 
    			'id' => 'required|numeric',
    			'email' => 'required|',
    			'password' => 'required|string|min:6|max:16',
    			'password2' => 'required|same:password',
    			'full_name' => 'required|string',
    			'phone' => 'required|numeric|min:10',
    			'address' => 'required',
    			'level' => 'required',
    		],
    		[
    			'id.required' => 'ID không được để trống',
    			'id.numeric' => 'ID chỉ được chứa ký tự chữ số',
    			'email.required' => 'Bạn chưa nhập mã admin',
    			'email.email' => 'Định dạng email chưa đúng',
    			'password.required' => 'Mật khẩu không được để trống',
    			'password.string' => 'Mật khẩu không được chứa ký tự đặc biệt',
    			'password.min' => 'Mật khẩu phải có độ dài từ 6 đến 16 ký tự',
    			'password.confirmed' => 'Mật khẩu chưa được xác nhận',
    			'password2.required' => 'Cần xác nhận mật khẩu',
    			'password2.same' => 'Mật khẩu xác nhận không trùng nhau',
    			'full_name.required' => 'Họ tên không được để trống',
    			'full_name.string' => 'Họ tên không được chứa ký tự đặc biệt',

    			'phone.required' => 'Số điện thoại không được để trống',
    			'phone.numeric' => 'Số điện thoại chi được là chữ số',
    			'phone.min' => 'Số điện thoại gồm 10 ký tự',
    			'phone.max' => 'Số điện thoại gồm 10 ký tự',
    			'address.required' => 'Địa chỉ không được để trống',
    			'level.required' => 'Vui lòng chọn quyền cho admin'

    		]
    	);
    	$users = new users;
    	$users->id = $req->id;
    	$users->email = $req->input('email');
    	$users->password = bcrypt($req->password);
    	$users->full_name = $req->full_name;
    	$users->phone = $req->phone;
    	$users->address = $req->address;
    	$users->level = $req->level;
    	$users->save();
    	return redirect('admin/users/them')->with('thongbao','Thêm thành công');
    }

    public function getXoa($id)
    {
    	$users = users::find($id)->delete();
    	return redirect('admin/users/danhsach')->with('thongbao','Xóa thành công');
    }
    
    public function getAdminDangnhap()
    {
    	return view('admin.login');
    }
    public function postAdminDangnhap(Request $req)
    {
    	$this->validate($req,
    	[
    		'email' =>'required|email',
    		'password' =>'required'
    	],
    	[
    		'email.required' => 'Vui lòng nhập email',
    		'email.email' => 'Vui lòng xem định dạng email',
    		'password.required' => 'Vui lòng nhập mật khẩu'
    	]);
    	if(Auth::attempt(['email' => $req->email, 'password'=> $req->password]))
    	{
    		return redirect('admin/thuonghieu/danhsach');
    	}
    	else
    	{
    		return redirect('admin')->with('thongbao','Đăng nhập không thành công');
    	}
    
    }
    
   public function getAdminDangxuat()
   {
    
   	Auth::logout();
   	return redirect('admin');

   }

   

}
