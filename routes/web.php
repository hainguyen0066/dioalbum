<?php

use Illuminate\Support\Facades\Route;

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
Route::get('/vendor/voyager/gravy','MyController@gravy');
Route::get('/vendor/voyager/gravy','HomeController@gravy');

Route::resource('home',\App\Http\Controllers\HomeController::class);
Route::resource('photography',\App\Http\Controllers\PhotographyController::class);
Route::resource('films',\App\Http\Controllers\FilmsController::class);
Route::resource('contact',\App\Http\Controllers\ContactController::class);
Route::resource('about',\App\Http\Controllers\AboutController::class);

Route::get('/', function () {
    return redirect('/home');
});

Route::get('/findvideo',[
    'uses' => 'App\Http\Controllers\FilmsController@getVideo',
    'as'   => 'findvideo'
]);

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
