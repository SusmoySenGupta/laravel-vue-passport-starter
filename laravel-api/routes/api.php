<?php

use App\Http\Controllers\Api\UserController;
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

Route::post('user', [UserController::class, 'store']);

Route::group(['middleware' => 'auth:api'], function ()
{
    // Common auth routes
    Route::resource('user', UserController::class)->only(['index']);

    // Admin routes
    Route::group(['middleware' => 'is_admin'], function (){
        //
    });

    // User routes
    Route::group(['middleware' => 'is_user'], function (){
        //
    });

    // Another user routes
    Route::group(['middleware' => 'another_user'], function (){
        //
    });
});
