<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class users extends Model
{
    //
    protected $table = "users";
    protected $primaryKey = 'id';
    protected $fillable = ['email', 'password'];
     public function hoadon(){
    	return $this->hasMany('App\hoadon','email','email');
    }
}
