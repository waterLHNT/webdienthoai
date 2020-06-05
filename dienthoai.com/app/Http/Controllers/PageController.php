<?php

namespace App\Http\Controllers;
use App\sanpham;
use App\thuonghieu;
use App\chitietsp;
use App\User;
use App\Cart;
use Hash;
use Session;
use Auth;
use Illuminate\Http\Request;


class PageController extends Controller
{   
    public function getIndex(){
        $new_sanpham = sanpham::where('new_sanpham',1)->paginate(3);//6 số điện thoại hiển thị trong index
        $hot_sanpham = sanpham::where('new_sanpham',0)->paginate(3);
        return view('page.trangchu',compact('new_sanpham','hot_sanpham'));
    }


    public function getLoaiSp($type){
        $sp_theoloai = sanpham::where('mathuonghieu',$type)->paginate(6);//6  số điện thoại hiển thị trong sản phâm
        $thuonghieu = thuonghieu::where('mathuonghieu',$type)->first();
        return view('page.loaisanpham',compact('sp_theoloai','thuonghieu'));
    }

    public function getChiTietSp(Request $req) //Cách 2 thay vì sử dụng $type thì dùng hàm Request
    {   
       
        $sanpham = sanpham::where('madienthoai',$req->madienthoai)->first();
        $chitietsp = chitietsp::where('madienthoai',$req->madienthoai)->first();
        $sp_tuongtu = sanpham::where('mathuonghieu',$sanpham->mathuonghieu)->paginate(3);
        return view('page.chitietsp',compact('sanpham','sp_tuongtu','chitietsp'));
    }
    public function getDangKy(){
        return view('page.dangky');
    }

    public function getDangNhap(){
        return view('page.dangnhap');
    }
    public function getCart(Request $req){
        
        
        return view('page.cart');
    }

    public function getSearch(Request $req){
        $timten=sanpham::where('tendienthoai','like','%'.$req->key.'%')
                                    // ->orWhere('gia',$req->key)//mún thêm gì cứ orWhere
                                    ->get();
        return view('page.search',compact('timten'));
        
    }
    public function postDangKy(Request $req){
        $this->validate($req,
            [
                'email'=>'required|email|unique:users,email',
                'password'=>'required|min:6|max:20',
                'fullname'=>'required',
                're_password'=>'required|same:password'
            ],
            [
                'email.required'=>'Vui lòng nhập email',
                'email.email'=>'Không đúng định dạng email',
                'email.unique'=>'Email đã có người sử dụng',
                'password.required'=>'Vui lòng nhập mật khẩu',
                're_password.same'=>'Mật khẩu không giống nhau',
                'password.min'=>'Mật khẩu ít nhất 6 kí tự'
            ]);
        $user = new User();
       
        $user->email = $req->email;
        $user->password = Hash::make($req->password);
        $user->full_name = $req->fullname;
        $user->phone = $req->phone;
        $user->address = $req->address;
        $user->save();
        return redirect()->back()->with('thanhcong','Tạo tài khoản thành công');
    }

     public function postDangNhap(Request $req){
    $this->validate($req,
            [
                'email'=>'required|email',
                'password'=>'required|min:6|max:20'
            ],
            [
                'email.required'=>'Vui lòng nhập email',
                'email.email'=>'Email không đúng định dạng',
                'password.required'=>'Vui lòng nhập mật khẩu',
                'password.min'=>'Mật khẩu ít nhất 6 kí tự',
                'password.max'=>'Mật khẩu không quá 20 kí tự'
            ]
        );
        $credentials = array('email'=>$req->email,'password'=>$req->password);
        $user = User::where([
                 ['email','=',$req->email],
                // ['status','=','1']
            ])->first();

        if($user){
            if(Auth::attempt($credentials)){

           return  redirect()->route('trang-chu')->with(['flag'=>'success','message'=>'Đăng nhập thành công']);
            }
            else{
                return redirect()->back()->with(['flag'=>'danger','message'=>'Đăng nhập không thành công']);
            }
        }
        else{
           return redirect()->back()->with(['flag'=>'danger','message'=>'Tài khoản chưa kích hoạt']); 
        }
        
}

    

    public function getAddtoCart(Request $req,$madienthoai){
        $product = sanpham::find($madienthoai);
        $oldCart = Session('cart')?Session::get('cart'):null;
        $cart = new Cart($oldCart);
        $cart->add($product, $madienthoai);
        $req->session()->put('cart',$cart);
        return redirect()->back();
    }

}
