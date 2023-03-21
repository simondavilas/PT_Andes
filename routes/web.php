<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\ClientController;
use App\Http\Controllers\CitiesController;
use App\Http\Controllers\UserController;
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

Route::get('/login', function () {
    return view('auth.login');
});



Auth::routes(['verify' => true]);

Route::group(['middleware' => 'auth', 'verified'], function () {
    Route::get('/', [ClientController::class, 'index'])->name('home');
    Route::get('/home', [ClientController::class, 'index'])->name('home');
    Route::resource('client', ClientController::class);
    Route::resource('cities', CitiesController::class);
    Route::resource('users', UserController::class);
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\ClientController::class, 'index'])->name('home');
