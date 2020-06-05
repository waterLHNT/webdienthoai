<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class thuonghieu extends Model
{

    protected $table = "thuonghieu";
    protected $primaryKey = 'mathuonghieu';
    
    public function sanpham(){
    	return $this->hasMany('App\sanpham','mathuonghieu','mathuonghieu');
    }
}
