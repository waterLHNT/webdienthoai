<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//GET /users:  (index)
//GET /users/{id}: (show)
//POST /users: (store)
//PUT /users/{id}: (update)
//DELETE /users/{id}:  (destroy)

Route::apiResource('users', 'api\UsersController');



