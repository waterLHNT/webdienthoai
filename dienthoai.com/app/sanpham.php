<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class sanpham extends Model
{
    protected $table = "sanpham";
    protected $primaryKey = 'madienthoai';
    // protected $table->foreign('mathuonghieud')->references('id')->on('thuonghieu');
    public function mathuonghieu(){
    	return $this->belongsTo('App\thuonghieu','mathuonghieu','madienthoai');
    }
    public function chitietsp(){
    	return $this->hasMany('App\chitietsp','madienthoai','madienthoai');
    }
    public function chitiethoadon(){
    	return $this->hasMany('App\chitiethoadon','madienthoai','madienthoai');
    }
	
}    
