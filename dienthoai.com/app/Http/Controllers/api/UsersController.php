<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\users;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = users::orderBy('id','desc')->get();
        return response()->json($users);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $req)
    {
        //
        $users = new users;
        $users->email = $req->input('email');
        $users->password = bcrypt($req->password);
        $users->full_name = $req->full_name;
        $users->phone = $req->phone;
        $users->address = $req->address;
        $users->level = $req->level;
        $users->save();
          $users = users::all();
        return response()->json($users);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $users = users::find($id);

        return response()->json($users);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $req, $id)
    {
        //
        $users = users::find($id);
        $users->email = $req->input('email');
        $users->password = bcrypt($req->password);
        $users->full_name = $req->full_name;
        $users->phone = $req->phone;
        $users->address = $req->address;
        $users->level = $req->level;
        $users->save();

        return response()->json($users);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $users = users::find($id)->delete();
         $users = users::orderBy('id','desc')->get();
        return response()->json($users);
    }
}
