<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', function () {
    return view('welcome');
});
Route::get('/',[
	'as'=>'trang-chu',
	'uses'=>'PageController@getIndex'
]);

Route::get('loai-san-pham/{type}',[// tên này là tên chạy locallhost/dienhoai.com/public/loai-san-pham/1
	'as'=>'loaisanpham',//tên này là : phần này mún hiển thị  ra nó thì liên kết với tên này
	'uses'=>'PageController@getLoaiSp'
]);

Route::get('chi-tiet-san-pham/{madienthoai}',[
	'as'=>'chitietsanpham',
	'uses'=>'PageController@getChiTietSp'
]);
Route::get('dangky',[
	'as'=>'dang-ky',
	'uses'=>'PageController@getDangKy'
]);

Route::get('dangnhap',[
	'as'=>'dang-nhap',
	'uses'=>'PageController@getDangNhap'
]);
Route::get('search',[
	'as'=>'search',
	'uses'=>'PageController@getSearch'
]);
 
Route::get('cart/}',[
	'as'=>'cart',
	'uses'=>'PageController@getCart'
]);
Route::post('dangnhap',[
	'as'=>'dang-nhap',
	'uses'=>'PageController@postDangNhap'
]);
Route::post('dangky',[
	'as'=>'dang-ky',
	'uses'=>'PageController@postDangKy'
]);
Route::get('add-to-cart/{madienthoai}',[
	'as'=>'themgiohang',
	'uses'=>'PageController@getAddtoCart'
]);

// Route::resource('post','AdminThuongHieu')->except('show');
Route::resource('posts','PostController');
//Trang Admin

Route::get('admin','AdminUsers@getAdminDangnhap');
Route::post('admin','AdminUsers@postAdminDangnhap');
Route::get('admin/dangxuat','AdminUsers@getAdminDangxuat');


Route::group(['prefix'=>'admin','middleware'=>'adminLogin'],function(){

	Route::group(['prefix'=>'thuonghieu'],function(){
		Route::get('danhsach','AdminThuongHieu@getDanhsach');
		Route::get('sua/{mathuonghieu}','AdminThuongHieu@getSua');
		Route::post('sua/{mathuonghieu}','AdminThuongHieu@postSua');
		Route::get('them','AdminThuongHieu@getThem');
		Route::post('them','AdminThuongHieu@postThem');
		Route::get('xoa/{mathuonghieu}','AdminThuongHieu@getXoa');
	});

	Route::group(['prefix'=>'sanpham'],function(){
		Route::get('danhsach','AdminSanPham@getDanhsach');
		Route::get('sua/{madienthoai}','AdminSanPham@getSua');
		Route::post('sua/{madienthoai}','AdminSanPham@postSua');
		Route::get('them','AdminSanPham@getThem');
		Route::post('them','AdminSanPham@postThem');
		Route::get('xoa/{madienthoai}','AdminSanPham@getXoa');
	});

	

	Route::group(['prefix'=>'users'],function(){
		Route::get('danhsach','AdminUsers@getDanhsach');
		Route::get('sua/{id}','AdminUsers@getSua');
		Route::post('sua/{id}','AdminUsers@postSua');
		Route::get('xoa/{id}','AdminUsers@getXoa');
		Route::get('them','AdminUsers@getThem');
		Route::post('them','AdminUsers@postThem');

	});

	

	
	Route::group(['prefix'=>'chitietsp'],function(){
		Route::get('danhsach','AdminController@getDanhsach');
		Route::get('sua','AdminController@getSua');
		Route::get('them','AdminController@getThem');
	});

});
