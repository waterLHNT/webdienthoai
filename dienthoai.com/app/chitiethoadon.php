<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class chitiethoadon extends Model
{
    protected $table = "chitiethoadon";
    public function sanpham(){
    	return $this->belongsTo('App\sanpham','masanpham','mahd');
    }
    public function hoadon(){
    	return $this->belongsTo('App\chitiethoadon','mahd','mahd');
    }
}
