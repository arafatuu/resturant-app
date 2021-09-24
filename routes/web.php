<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ResturantController;
//use Session;
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

// Route::get('/', function () {
//     return view('welcome');
// });
Route::group(['middleware'=>'web'], function(){
    Route::get('/',[ResturantController::class,'index']);
Route::get('/list',[ResturantController::class,'list']);
Route::view('/add','addresturant');
Route::post('/add',[ResturantController::class,'add']);
Route::get('/delete/{id}',[ResturantController::class,'delete']);
Route::get('/edit/{id}',[ResturantController::class,'edit']);
Route::post('/edit',[ResturantController::class,'update']);
Route::view('/register','register');
Route::post('/register',[ResturantController::class,'register']);
Route::view('/login','login');
Route::post('/login',[ResturantController::class,'login']);
Route::get('/logout',function(){
    Session::forget('user');
    return redirect('/');
});
});



