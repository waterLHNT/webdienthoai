<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class chitietsp extends Model
{
    protected $table = "chitietsp";

    public function sanpham(){
    	return $this->belongsTo('App\sanpham','madienthoai','mactsp');
    }
    
}
