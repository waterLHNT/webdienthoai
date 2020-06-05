<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LoginConTroller extends Controller
{
    public function LoginAdmin(){
    	return view('admin.login');
    }
}
